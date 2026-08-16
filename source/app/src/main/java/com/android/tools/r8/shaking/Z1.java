package com.android.tools.r8.shaking;

import com.android.tools.r8.ResourceException;
import com.android.tools.r8.origin.PathOrigin;
import com.android.tools.r8.relocated.keepanno.proto.KeepSpecProtos;
import java.io.IOException;
import java.io.InputStream;
import java.nio.file.Files;
import java.nio.file.OpenOption;
import java.nio.file.Path;

public final class Z1 extends AbstractC11112a2 {

    public final Path f57146b;

    public Z1(Path path) {
        super(new PathOrigin(path));
        this.f57146b = path;
    }

    @Override
    public final KeepSpecProtos.KeepSpec a() {
        try {
            InputStream newInputStream = Files.newInputStream(this.f57146b, new OpenOption[0]);
            try {
                KeepSpecProtos.KeepSpec parseFrom = KeepSpecProtos.KeepSpec.parseFrom(newInputStream);
                if (newInputStream == null) {
                    return parseFrom;
                }
                newInputStream.close();
                return parseFrom;
            } finally {
            }
        } catch (IOException e10) {
            throw new ResourceException(this.f57168a, e10);
        }
    }
}
