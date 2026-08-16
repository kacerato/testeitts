package org.eclipse.jdt.internal.core.nd.field;

import java.util.ArrayList;
import java.util.List;
import org.eclipse.jdt.internal.core.nd.ITypeFactory;
import org.eclipse.jdt.internal.core.nd.Nd;
import org.eclipse.jdt.internal.core.nd.NdNode;
import org.eclipse.jdt.internal.core.nd.db.BTree;
import org.eclipse.jdt.internal.core.nd.db.Database;
import org.eclipse.jdt.internal.core.nd.db.IBTreeComparator;
import org.eclipse.jdt.internal.core.nd.db.IBTreeVisitor;
import org.eclipse.jdt.internal.core.nd.db.IString;
import org.eclipse.jdt.internal.core.nd.db.IndexException;
import org.eclipse.jdt.internal.core.nd.db.ModificationLog;

public class FieldSearchIndex<T extends NdNode> extends BaseField implements IDestructableField {
    private static IResultRank anything = new IResultRank() {
        @Override
        public long getRank(Nd nd2, long j10) {
            return 1L;
        }
    };
    private final ITypeFactory<BTree> btreeFactory = BTree.getFactory(new IBTreeComparator() {
        @Override
        public int compare(Nd nd2, long j10, long j11) {
            int compareCompatibleWithIgnoreCase = FieldSearchIndex.this.searchKey.get(nd2, j10).compareCompatibleWithIgnoreCase(FieldSearchIndex.this.searchKey.get(nd2, j11));
            return compareCompatibleWithIgnoreCase == 0 ? Long.signum(j10 - j11) : compareCompatibleWithIgnoreCase;
        }
    });
    private final ModificationLog.Tag destructTag;
    FieldSearchKey<?> searchKey;

    public interface IResultRank {
        long getRank(Nd nd2, long j10);
    }

    public static final class SearchCriteria {
        private char[] searchString;
        private boolean matchCase = true;
        private boolean isPrefix = false;
        private short requiredNodeType = -1;
        private boolean matchingParentNodeAddress = false;

        private SearchCriteria(char[] cArr) {
            this.searchString = cArr;
        }

        public static SearchCriteria create(String str) {
            return create(str.toCharArray());
        }

        public boolean acceptsNodeType(short s10) {
            short s11 = this.requiredNodeType;
            return s11 == -1 || s11 == s10;
        }

        public SearchCriteria allowAnyNodeType() {
            this.requiredNodeType = (short) -1;
            return this;
        }

        public char[] getSearchString() {
            return this.searchString;
        }

        public boolean isMatchingCase() {
            return this.matchCase;
        }

        public boolean isMatchingParentNodeAddress() {
            return this.matchingParentNodeAddress;
        }

        public boolean isPrefixSearch() {
            return this.isPrefix;
        }

        public SearchCriteria matchCase(boolean z10) {
            this.matchCase = z10;
            return this;
        }

        public SearchCriteria prefix(boolean z10) {
            this.isPrefix = z10;
            return this;
        }

        public SearchCriteria requireNodeType(short s10) {
            this.requiredNodeType = s10;
            return this;
        }

        public boolean requiresSpecificNodeType() {
            return this.requiredNodeType != -1;
        }

        public static SearchCriteria create(char[] cArr) {
            return new SearchCriteria(cArr);
        }
    }

    public abstract class SearchCriteriaToBtreeVisitorAdapter implements IBTreeVisitor {

        private final Nd f102555nd;
        private final SearchCriteria searchCriteria;

        public SearchCriteriaToBtreeVisitorAdapter(SearchCriteria searchCriteria, Nd nd2) {
            this.searchCriteria = searchCriteria;
            this.f102555nd = nd2;
        }

        public abstract boolean acceptResult(long j10);

        @Override
        public int compare(long j10) throws IndexException {
            IString iString = FieldSearchIndex.this.searchKey.get(this.f102555nd, j10);
            return this.searchCriteria.isPrefixSearch() ? iString.comparePrefix(this.searchCriteria.getSearchString(), false) : iString.compareCompatibleWithIgnoreCase(this.searchCriteria.getSearchString());
        }

        @Override
        public boolean visit(long j10) throws IndexException {
            if (this.searchCriteria.requiresSpecificNodeType()) {
                if (!this.searchCriteria.acceptsNodeType(NdNode.NODE_TYPE.get(this.f102555nd, j10))) {
                    return true;
                }
            }
            IString iString = FieldSearchIndex.this.searchKey.get(this.f102555nd, j10);
            if (this.searchCriteria.isMatchingCase()) {
                if (this.searchCriteria.isPrefixSearch()) {
                    if (iString.comparePrefix(this.searchCriteria.getSearchString(), true) != 0) {
                        return true;
                    }
                } else if (iString.compare(this.searchCriteria.getSearchString(), true) != 0) {
                    return true;
                }
            }
            return acceptResult(j10);
        }
    }

    public interface Visitor<T> {
        boolean visit(T t10);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private FieldSearchIndex(FieldSearchKey<?> fieldSearchKey, String str, int i10) {
        if (fieldSearchKey != null) {
            FieldSearchIndex<?> fieldSearchIndex = fieldSearchKey.searchIndex;
            if (fieldSearchIndex != null && fieldSearchIndex != this) {
                throw new IllegalArgumentException("Attempted to construct a FieldSearchIndex referring to a search key that is already in use by a different index");
            }
            fieldSearchKey.searchIndex = this;
        }
        this.searchKey = fieldSearchKey;
        setFieldName("field " + i10 + ", a " + getClass().getSimpleName() + " in struct " + str);
        StringBuilder sb2 = new StringBuilder("Destructing ");
        sb2.append(getFieldName());
        this.destructTag = ModificationLog.createTag(sb2.toString());
    }

    public static <T extends NdNode, B> FieldSearchIndex<T> create(StructDef<B> structDef, FieldSearchKey<B> fieldSearchKey) {
        FieldSearchIndex<T> fieldSearchIndex = new FieldSearchIndex<>(fieldSearchKey, structDef.getStructName(), structDef.getNumFields());
        structDef.add(fieldSearchIndex);
        structDef.addDestructableField(fieldSearchIndex);
        return fieldSearchIndex;
    }

    public List<T> asList(final Nd nd2, long j10) {
        final ArrayList arrayList = new ArrayList();
        get(nd2, j10).accept(new IBTreeVisitor() {
            @Override
            public int compare(long j11) {
                return 0;
            }

            @Override
            public boolean visit(long j11) {
                arrayList.add(NdNode.load(nd2, j11));
                return true;
            }
        });
        return arrayList;
    }

    @Override
    public void destruct(Nd nd2, long j10) {
        Database db2 = nd2.getDB();
        db2.getLog().start(this.destructTag);
        try {
            this.btreeFactory.destruct(nd2, j10);
        } finally {
            db2.getLog().end(this.destructTag);
        }
    }

    public List<T> findAll(final Nd nd2, long j10, SearchCriteria searchCriteria) {
        final ArrayList arrayList = new ArrayList();
        get(nd2, j10).accept(new FieldSearchIndex<T>.SearchCriteriaToBtreeVisitorAdapter(this, searchCriteria, nd2) {
            @Override
            public boolean acceptResult(long j11) {
                arrayList.add(NdNode.load(nd2, j11));
                return true;
            }
        });
        return arrayList;
    }

    public T findBest(final Nd nd2, long j10, SearchCriteria searchCriteria, final IResultRank iResultRank) {
        final long[] jArr = new long[1];
        final long[] jArr2 = new long[1];
        get(nd2, j10).accept(new FieldSearchIndex<T>.SearchCriteriaToBtreeVisitorAdapter(this, searchCriteria, nd2) {
            @Override
            public boolean acceptResult(long j11) {
                long rank = iResultRank.getRank(nd2, j11);
                long[] jArr3 = jArr;
                if (rank < jArr3[0]) {
                    return true;
                }
                jArr3[0] = rank;
                jArr2[0] = j11;
                return true;
            }
        });
        long j11 = jArr2[0];
        if (j11 == 0) {
            return null;
        }
        return (T) NdNode.load(nd2, j11);
    }

    public T findFirst(Nd nd2, long j10, SearchCriteria searchCriteria) {
        return findBest(nd2, j10, searchCriteria, anything);
    }

    public BTree get(Nd nd2, long j10) {
        return this.btreeFactory.create(nd2, j10 + this.offset);
    }

    @Override
    public int getRecordSize() {
        return this.btreeFactory.getRecordSize();
    }

    public boolean visitAll(final Nd nd2, long j10, SearchCriteria searchCriteria, final Visitor<T> visitor) {
        return get(nd2, j10).accept(new FieldSearchIndex<T>.SearchCriteriaToBtreeVisitorAdapter(this, searchCriteria, nd2) {
            @Override
            public boolean acceptResult(long j11) {
                return visitor.visit(NdNode.load(nd2, j11));
            }
        });
    }

    public List<T> findAll(Nd nd2, long j10, SearchCriteria searchCriteria, int i10) {
        ArrayList arrayList = new ArrayList();
        get(nd2, j10).accept(new FieldSearchIndex<T>.SearchCriteriaToBtreeVisitorAdapter(this, this, searchCriteria, nd2, i10, arrayList, nd2) {
            int remainingCount;
            final FieldSearchIndex this$0;
            private final Nd val$nd;
            private final List val$result;

            {
                this.val$result = arrayList;
                this.val$nd = nd2;
                this.remainingCount = i10;
            }

            @Override
            public boolean acceptResult(long j11) {
                this.val$result.add(NdNode.load(this.val$nd, j11));
                int i11 = this.remainingCount - 1;
                this.remainingCount = i11;
                return i11 > 0;
            }
        });
        return arrayList;
    }
}
