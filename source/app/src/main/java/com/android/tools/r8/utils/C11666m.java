package com.android.tools.r8.utils;

import com.android.tools.r8.DataDirectoryResource;
import com.android.tools.r8.DataEntryResource;
import com.android.tools.r8.DataResourceConsumer;
import com.android.tools.r8.DiagnosticsHandler;
import com.android.tools.r8.ResourceException;
import com.android.tools.r8.internal.AbstractC6706c8;
import java.io.IOException;

public final class C11666m implements DataResourceConsumer {

    public final DataResourceConsumer f58618a;

    public final C11667n f58619b;

    public C11666m(C11667n c11667n, DataResourceConsumer dataResourceConsumer) {
        this.f58619b = c11667n;
        this.f58618a = dataResourceConsumer;
    }

    @Override
    public final void accept(DataDirectoryResource dataDirectoryResource, DiagnosticsHandler diagnosticsHandler) {
        DataResourceConsumer dataResourceConsumer = this.f58618a;
        if (dataResourceConsumer != null) {
            dataResourceConsumer.accept(dataDirectoryResource, diagnosticsHandler);
        }
    }

    @Override
    public final void finished(DiagnosticsHandler diagnosticsHandler) {
        DataResourceConsumer dataResourceConsumer = this.f58618a;
        if (dataResourceConsumer != null) {
            dataResourceConsumer.finished(diagnosticsHandler);
        }
    }

    @Override
    public final void accept(DataEntryResource dataEntryResource, DiagnosticsHandler diagnosticsHandler) {
        try {
            DataEntryResource fromBytes = DataEntryResource.fromBytes(AbstractC6706c8.a(dataEntryResource.getByteStream()), dataEntryResource.getName(), dataEntryResource.getOrigin());
            this.f58619b.f58623e.f58633a.a(fromBytes);
            DataResourceConsumer dataResourceConsumer = this.f58618a;
            if (dataResourceConsumer != null) {
                dataResourceConsumer.accept(fromBytes, diagnosticsHandler);
            }
        } catch (ResourceException | IOException e10) {
            throw new RuntimeException(e10);
        }
    }
}
