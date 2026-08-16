package java.lang.classfile.constantpool;

import java.lang.classfile.BootstrapMethodEntry;
import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.Objects;

public interface ConstantPool extends Iterable<PoolEntry> {
    PoolEntry entryByIndex(int i10);

    int size();

    <T extends PoolEntry> T entryByIndex(int i10, Class<T> cls);

    BootstrapMethodEntry bootstrapMethodEntry(int i10);

    int bootstrapMethodCount();

    @Override
    default Iterator<PoolEntry> iterator() {
        return new Iterator<PoolEntry>(this) {
            int index;
            final ConstantPool this$0;

            {
                Objects.requireNonNull(this);
                this.this$0 = this;
                this.index = 1;
            }

            @Override
            public boolean hasNext() {
                return this.index < this.this$0.size();
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override
            public PoolEntry next() {
                if (!hasNext()) {
                    throw new NoSuchElementException();
                }
                PoolEntry e10 = this.this$0.entryByIndex(this.index);
                this.index += e10.width();
                return e10;
            }
        };
    }
}
