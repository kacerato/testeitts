package com.ardor3d.util.export;

import java.io.IOException;

public interface Savable {
    Class<?> getClassTag();

    void read(InputCapsule inputCapsule) throws IOException;

    void write(OutputCapsule outputCapsule) throws IOException;
}
