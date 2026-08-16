package JAVARuntime;

import android.view.ContextMenu;
import android.view.DragEvent;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.widget.Button;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/Builder/aab_release.zip:base/assets/javaruntimelibraries.zip:AButton.class
  base.apk:assets/Editor/Builder/app_release.zip:assets/javaruntimelibraries.zip:AButton.class
  classes.dex
 */
@ClassCategory(cat = {"Android Views"})
public class AButton extends Button implements AViewInstance {

    public class AnonymousClass1 extends AOnLongClickListener {
        final View.OnLongClickListener val$l;

        public AnonymousClass1(final View.OnLongClickListener val$l) {
            this.val$l = val$l;
        }

        @Override
        public boolean onLongClickEvent(View v10) {
            return this.val$l.onLongClick(v10);
        }
    }

    public class AnonymousClass2 extends AOnClickListener {
        final View.OnClickListener val$l;

        public AnonymousClass2(final View.OnClickListener val$l) {
            this.val$l = val$l;
        }

        @Override
        public void onClickEvent(View v10) {
            this.val$l.onClick(v10);
        }
    }

    public class AnonymousClass3 extends AOnTouchListener {
        final View.OnTouchListener val$l;

        public AnonymousClass3(final View.OnTouchListener val$l) {
            this.val$l = val$l;
        }

        @Override
        public boolean onTouchEvent(View v10, MotionEvent event) {
            return this.val$l.onTouch(v10, event);
        }
    }

    public class AnonymousClass4 extends AOnHoverListener {
        final View.OnHoverListener val$l;

        public AnonymousClass4(final View.OnHoverListener val$l) {
            this.val$l = val$l;
        }

        @Override
        public boolean onHoverEvent(View v10, MotionEvent event) {
            return this.val$l.onHover(v10, event);
        }
    }

    public class AnonymousClass5 extends AOnDragListener {
        final View.OnDragListener val$l;

        public AnonymousClass5(final View.OnDragListener val$l) {
            this.val$l = val$l;
        }

        @Override
        public boolean onDragEvent(View v10, DragEvent event) {
            return this.val$l.onDrag(v10, event);
        }
    }

    public class AnonymousClass6 extends AOnKeyListener {
        final View.OnKeyListener val$l;

        public AnonymousClass6(final View.OnKeyListener val$l) {
            this.val$l = val$l;
        }

        @Override
        public boolean onKeyEvent(View v10, int keyCode, KeyEvent event) {
            return this.val$l.onKey(v10, keyCode, event);
        }
    }

    public class AnonymousClass7 extends AOnScrollChangeListener {
        final View.OnScrollChangeListener val$l;

        public AnonymousClass7(final View.OnScrollChangeListener val$l) {
            this.val$l = val$l;
        }

        @Override
        public void onScrollChangeEvent(View v10, int scrollX, int scrollY, int oldScrollX, int oldScrollY) {
            this.val$l.onScrollChange(v10, scrollX, scrollY, oldScrollX, oldScrollY);
        }
    }

    public class AnonymousClass8 extends AOnFocusChangeListener {
        final View.OnFocusChangeListener val$l;

        public AnonymousClass8(final View.OnFocusChangeListener val$l) {
            this.val$l = val$l;
        }

        @Override
        public void onFocusChangeEvent(View v10, boolean hasFocus) {
            this.val$l.onFocusChange(v10, hasFocus);
        }
    }

    public class AnonymousClass9 extends AOnCreateContextMenuListener {
        final View.OnCreateContextMenuListener val$l;

        public AnonymousClass9(final View.OnCreateContextMenuListener val$l) {
            this.val$l = val$l;
        }

        @Override
        public void onCreateContextMenuEvent(ContextMenu menu, View v10, ContextMenu.ContextMenuInfo menuInfo) {
            this.val$l.onCreateContextMenu(menu, v10, menuInfo);
        }
    }

    public AButton() {
        super(null);
    }

    @Override
    public String getViewID() {
        return Editor.getIdOf(this);
    }

    @Override
    public <T extends View> T findByID(String str) {
        return (T) Editor.findViewByID(this, str);
    }

    @Override
    public void setOnLongClickListener(View.OnLongClickListener onLongClickListener) {
    }

    @Override
    public void setOnClickListener(View.OnClickListener onClickListener) {
    }

    @Override
    public void setOnTouchListener(View.OnTouchListener onTouchListener) {
    }

    @Override
    public void setOnHoverListener(View.OnHoverListener onHoverListener) {
    }

    @Override
    public void setOnDragListener(View.OnDragListener onDragListener) {
    }

    @Override
    public void setOnKeyListener(View.OnKeyListener onKeyListener) {
    }

    @Override
    public void setOnScrollChangeListener(View.OnScrollChangeListener onScrollChangeListener) {
    }

    @Override
    public void setOnFocusChangeListener(View.OnFocusChangeListener onFocusChangeListener) {
    }

    @Override
    public void setOnCreateContextMenuListener(View.OnCreateContextMenuListener onCreateContextMenuListener) {
    }
}
