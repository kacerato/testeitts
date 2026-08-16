package G9;

import JAVARuntime.VoxelGeneratorListener;

public class b {
    public static VoxelGeneratorListener.Direction a(int face) {
        if (face == 0) {
            return VoxelGeneratorListener.Direction.LEFT;
        }
        if (face == 1) {
            return VoxelGeneratorListener.Direction.RIGHT;
        }
        if (face == 2) {
            return VoxelGeneratorListener.Direction.UP;
        }
        if (face == 3) {
            return VoxelGeneratorListener.Direction.DOWN;
        }
        if (face == 4) {
            return VoxelGeneratorListener.Direction.FRONT;
        }
        if (face == 5) {
            return VoxelGeneratorListener.Direction.BACK;
        }
        throw new IllegalArgumentException("Invalid face:" + face);
    }
}
