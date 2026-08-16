package fm;

import java.io.IOException;
import java.io.OutputStream;

public abstract class AbstractC13259c extends OutputStream {
    @Override
    public void close() {
    }

    @Override
    public void flush() {
    }

    @Override
    public void write(int i10) throws IOException {
        write(new byte[]{(byte) i10}, 0, 1);
    }
}
