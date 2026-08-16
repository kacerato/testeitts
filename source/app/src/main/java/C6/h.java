package C6;

import android.view.MotionEvent;
import android.widget.Toast;
import androidx.annotation.NonNull;
import org.blacksquircle.ui.editorkit.plugin.base.EditorPlugin;

public class h extends EditorPlugin {
    public h() {
        super("LineNumbersTouchPlugin");
    }

    @Override
    public boolean onTouchEvent(@NonNull MotionEvent event) {
        if (event.getAction() == 0) {
            int rawX = (int) event.getRawX();
            int rawY = (int) event.getRawY();
            Toast.makeText(N7.c.t(), "Loc " + rawX + ", " + rawY, 0).show();
        }
        return super.onTouchEvent(event);
    }
}
