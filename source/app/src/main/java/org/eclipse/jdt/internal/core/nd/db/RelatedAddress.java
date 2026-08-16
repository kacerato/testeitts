package org.eclipse.jdt.internal.core.nd.db;

import java.util.Iterator;
import java.util.List;
import org.eclipse.jdt.internal.core.nd.db.ModificationLog;

public class RelatedAddress {
    private final long address;
    private final String description;
    private final ModificationLog.MemoryAccessLog modificationReport;
    private final int size;

    public RelatedAddress(String str, long j10, int i10, ModificationLog.MemoryAccessLog memoryAccessLog) {
        this.description = str;
        this.address = j10;
        this.size = i10;
        this.modificationReport = memoryAccessLog;
    }

    public boolean isSameAddressAs(RelatedAddress relatedAddress) {
        return relatedAddress.address == this.address && relatedAddress.size == this.size;
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append(this.description);
        sb2.append(" [address ");
        sb2.append(this.address);
        sb2.append(", size ");
        sb2.append(this.size);
        sb2.append("]: ");
        List<ModificationLog.MemoryOperation> operations = this.modificationReport.reduce(5).getOperations();
        if (operations.isEmpty()) {
            sb2.append("No modification report");
        } else {
            sb2.append("\n");
            Iterator<ModificationLog.MemoryOperation> it = operations.iterator();
            while (it.hasNext()) {
                it.next().printTo(sb2, 1);
            }
        }
        return sb2.toString();
    }
}
