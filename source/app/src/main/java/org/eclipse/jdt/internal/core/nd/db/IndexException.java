package org.eclipse.jdt.internal.core.nd.db;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Status;
import org.eclipse.jdt.core.JavaCore;

public class IndexException extends RuntimeException {
    private static final long serialVersionUID = -6561893929558916225L;
    private List<RelatedAddress> relatedAddresses;
    private IStatus status;
    private long time;

    public IndexException(IStatus iStatus) {
        this.relatedAddresses = new ArrayList();
        this.time = -1L;
        this.status = iStatus;
    }

    public void addRelatedAddress(RelatedAddress relatedAddress) {
        Iterator<RelatedAddress> it = this.relatedAddresses.iterator();
        while (it.hasNext()) {
            if (it.next().isSameAddressAs(relatedAddress)) {
                return;
            }
        }
        this.relatedAddresses.add(relatedAddress);
    }

    @Override
    public synchronized Throwable getCause() {
        return this.status.getException();
    }

    @Override
    public String getMessage() {
        StringBuilder sb2 = new StringBuilder();
        if (this.time != -1) {
            sb2.append("(time ");
            sb2.append(this.time);
            sb2.append(") ");
        }
        sb2.append(this.status.getMessage());
        if (!this.relatedAddresses.isEmpty()) {
            sb2.append("\nRelated addresses:\n");
            boolean z10 = true;
            for (RelatedAddress relatedAddress : this.relatedAddresses) {
                if (!z10) {
                    sb2.append("\n");
                }
                sb2.append(relatedAddress.toString());
                z10 = false;
            }
        }
        return sb2.toString();
    }

    public IStatus getStatus() {
        return this.status;
    }

    public void setTime(long j10) {
        this.time = j10;
    }

    public IndexException(String str) {
        this((IStatus) new Status(4, JavaCore.PLUGIN_ID, str));
    }
}
