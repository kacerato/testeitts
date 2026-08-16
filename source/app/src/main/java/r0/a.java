package R0;

import android.database.AbstractWindowedCursor;
import android.database.CrossProcessCursor;
import android.database.Cursor;
import android.database.CursorWindow;
import android.database.CursorWrapper;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

@C0.a
public class a extends CursorWrapper implements CrossProcessCursor {

    public AbstractWindowedCursor f22544b;

    @C0.a
    public a(@NonNull Cursor cursor) {
        super(cursor);
        for (int i10 = 0; i10 < 10 && (cursor instanceof CursorWrapper); i10++) {
            cursor = ((CursorWrapper) cursor).getWrappedCursor();
        }
        if (!(cursor instanceof AbstractWindowedCursor)) {
            throw new IllegalArgumentException("Unknown type: ".concat(cursor.getClass().getName()));
        }
        this.f22544b = (AbstractWindowedCursor) cursor;
    }

    @C0.a
    public void a(@Nullable CursorWindow cursorWindow) {
        this.f22544b.setWindow(cursorWindow);
    }

    @Override
    @C0.a
    public void fillWindow(int i10, @NonNull CursorWindow cursorWindow) {
        this.f22544b.fillWindow(i10, cursorWindow);
    }

    @Override
    @Nullable
    @C0.a
    public CursorWindow getWindow() {
        return this.f22544b.getWindow();
    }

    @Override
    @NonNull
    public final Cursor getWrappedCursor() {
        return this.f22544b;
    }

    @Override
    public final boolean onMove(int i10, int i11) {
        return this.f22544b.onMove(i10, i11);
    }
}
