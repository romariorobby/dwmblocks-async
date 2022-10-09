#include "blockn.h"

#define CMDLENGTH 45
#define DELIMITER "  "
#define CLICKABLE_BLOCKS

const Block blocks[] = {
	// For Powerline users must uses block number start with >17
	BLOCK("sb-tasks",    10,    BLOCKN_TASK),
	BLOCK("sb-packages", 1800,  BLOCKN_PACKAGE),
	BLOCK("sb-news",     0,     BLOCKN_NEWS),
	BLOCK("sb-volume",   0,     BLOCKN_VOLUME),
	BLOCK("sb-battery",  5,     BLOCKN_BATTERY),
	BLOCK("sb-clock",    1,     BLOCKN_CLOCK),
	BLOCK("cat /tmp/recordingicon",    0,     BLOCKN_RECORD),
};
