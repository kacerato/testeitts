package org.eclipse.jdt.internal.core.nd;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.eclipse.jdt.internal.core.nd.db.Database;
import org.eclipse.jdt.internal.core.nd.db.IndexException;
import org.eclipse.jdt.internal.core.nd.db.RelatedAddress;
import org.eclipse.jdt.internal.core.nd.field.IField;

public final class IndexExceptionBuilder {

    private final Database f102531db;
    private final List<RelatedAddress> relatedAddresses = new ArrayList();

    public IndexExceptionBuilder(Database database) {
        this.f102531db = database;
    }

    public IndexExceptionBuilder addProblemAddress(String str, long j10, int i10) {
        this.relatedAddresses.add(new RelatedAddress(str, j10, i10, this.f102531db.getLog().getReportFor(j10, i10)));
        return this;
    }

    public void attachTo(IndexException indexException) {
        Iterator<RelatedAddress> it = this.relatedAddresses.iterator();
        while (it.hasNext()) {
            indexException.addRelatedAddress(it.next());
        }
    }

    public IndexException build(String str) {
        IndexException indexException = new IndexException(str);
        if (this.f102531db.getLog().enabled()) {
            indexException.setTime(this.f102531db.getLog().getWriteCount());
        }
        attachTo(indexException);
        return indexException;
    }

    public IndexExceptionBuilder addProblemAddress(String str, IField iField, long j10) {
        return addProblemAddress(str, j10 + iField.getOffset(), iField.getRecordSize());
    }

    public IndexExceptionBuilder addProblemAddress(IField iField, long j10) {
        return addProblemAddress(iField.getFieldName(), iField, j10);
    }
}
