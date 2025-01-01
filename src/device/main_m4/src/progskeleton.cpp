#include <stdio.h>
#include "progskeleton.h"
#include "pixy_init.h"
#include "camera.h"
#include "conncomp.h"
#include "param.h"
#include <string.h>
#include "LinesRoutine.h"

std::vector< std::vector<Point2D_int> > vectors;
Program g_progSkeleton =
{
	"skeleton",
	"black lines skeleton",
	skeletonSetup, 
	skeletonLoop
};



int skeletonSetup()
{
	return 0;
}



int skeletonLoop()
{
    uint8_t *frame = (uint8_t *)SRAM1_LOC;
    size_t frame_size = CAM_RES2_WIDTH*CAM_RES2_HEIGHT;
    cam_getFrame(frame, SRAM1_SIZE, CAM_GRAB_M1R2, 0, 0, CAM_RES2_WIDTH, CAM_RES2_HEIGHT);

	vectors = LinesRoutine(frame, VECTOR_APPROXIMATION_EPSILON, DOWNSCALE_FACTOR);
	return 0;
}


