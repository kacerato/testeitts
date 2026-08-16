package com.jme3.opencl;

import java.util.Collection;

public interface Device {

    public enum DeviceType {
        DEFAULT,
        CPU,
        GPU,
        ACCELEARTOR,
        ALL
    }

    int getAddressBits();

    int getClockFrequency();

    String getCompilerVersion();

    int getCompilerVersionMajor();

    int getCompilerVersionMinor();

    int getComputeUnits();

    DeviceType getDeviceType();

    String getDriverVersion();

    int getDriverVersionMajor();

    int getDriverVersionMinor();

    Collection<? extends String> getExtensions();

    long getGlobalMemorySize();

    long getLocalMemorySize();

    long getMaximumAllocationSize();

    int getMaximumConstantArguments();

    long getMaximumConstantBufferSize();

    long[] getMaximumImage2DSize();

    long[] getMaximumImage3DSize();

    int getMaximumReadImages();

    int getMaximumSamplers();

    long getMaximumWorkItemDimensions();

    long[] getMaximumWorkItemSizes();

    int getMaximumWriteImages();

    long getMaxiumWorkItemsPerGroup();

    String getName();

    Platform getPlatform();

    String getProfile();

    String getVendor();

    int getVendorId();

    String getVersion();

    int getVersionMajor();

    int getVersionMinor();

    boolean hasCompiler();

    boolean hasDouble();

    boolean hasErrorCorrectingMemory();

    boolean hasExtension(String str);

    boolean hasHalfFloat();

    boolean hasImageSupport();

    boolean hasOpenGLInterop();

    boolean hasUnifiedMemory();

    boolean hasWritableImage3D();

    boolean isAvailable();

    boolean isLittleEndian();
}
