package com.android.tools.r8.utils;

import com.android.tools.r8.DataDirectoryResource;
import com.android.tools.r8.DataEntryResource;
import com.android.tools.r8.DataResourceConsumer;
import com.android.tools.r8.DiagnosticsHandler;
import com.android.tools.r8.ResourceException;
import com.android.tools.r8.internal.AbstractC6706c8;
import java.io.IOException;

public final class C11668o implements DataResourceConsumer {

    public final DataResourceConsumer f58624a;

    public final C11669p f58625b;

    public C11668o(C11669p c11669p, DataResourceConsumer dataResourceConsumer) {
        this.f58625b = c11669p;
        this.f58624a = dataResourceConsumer;
    }

    @Override
    public final void accept(DataDirectoryResource dataDirectoryResource, DiagnosticsHandler diagnosticsHandler) {
        this.f58625b.f58629e.f58633a.a(DataDirectoryResource.fromName(dataDirectoryResource.getName(), dataDirectoryResource.getOrigin()));
        DataResourceConsumer dataResourceConsumer = this.f58624a;
        if (dataResourceConsumer != null) {
            dataResourceConsumer.accept(dataDirectoryResource, diagnosticsHandler);
        }
    }

    @Override
    public final void finished(DiagnosticsHandler diagnosticsHandler) {
        DataResourceConsumer dataResourceConsumer = this.f58624a;
        if (dataResourceConsumer != null) {
            dataResourceConsumer.finished(diagnosticsHandler);
        }
    }

    @Override
    public final void accept(DataEntryResource dataEntryResource, DiagnosticsHandler diagnosticsHandler) {
        try {
            DataEntryResource fromBytes = DataEntryResource.fromBytes(AbstractC6706c8.a(dataEntryResource.getByteStream()), dataEntryResource.getName(), dataEntryResource.getOrigin());
            this.f58625b.f58629e.f58633a.a(fromBytes);
            DataResourceConsumer dataResourceConsumer = this.f58624a;
            if (dataResourceConsumer != null) {
                dataResourceConsumer.accept(fromBytes, diagnosticsHandler);
            }
        } catch (ResourceException | IOException e10) {
            throw new RuntimeException(e10);
        }
    }
}
