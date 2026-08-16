package JAVARuntime;

import Vc.e;
import android.view.ContextMenu;
import android.view.DragEvent;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.widget.ImageView;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/Builder/aab_release.zip:base/assets/javaruntimelibraries.zip:AImageView.class
  base.apk:assets/Editor/Builder/app_release.zip:assets/javaruntimelibraries.zip:AImageView.class
  classes.dex
 */
@ClassCategory(cat = {"Android Views"})
public class AImageView extends ImageView implements AViewInstance {

    public class AnonymousClass1 implements Runnable {
        final File val$file;
        final ImageView val$imageView;

        public AnonymousClass1(final ImageView val$imageView, final File val$file) {
            this.val$imageView = val$imageView;
            this.val$file = val$file;
        }

        @Override
        public void run() {
            e.F(this.val$imageView, this.val$file);
        }
    }

    public class AnonymousClass10 extends AOnFocusChangeListener {
        final View.OnFocusChangeListener val$l;

        public AnonymousClass10(final View.OnFocusChangeListener val$l) {
            this.val$l = val$l;
        }

        @Override
        public void onFocusChangeEvent(View v10, boolean hasFocus) {
            this.val$l.onFocusChange(v10, hasFocus);
        }
    }

    public class AnonymousClass11 extends AOnCreateContextMenuListener {
        final View.OnCreateContextMenuListener val$l;

        public AnonymousClass11(final View.OnCreateContextMenuListener val$l) {
            this.val$l = val$l;
        }

        @Override
        public void onCreateContextMenuEvent(ContextMenu menu, View v10, ContextMenu.ContextMenuInfo menuInfo) {
            this.val$l.onCreateContextMenu(menu, v10, menuInfo);
        }
    }

    public class AnonymousClass2 extends AOnGenericMotionListener {
        final View.OnGenericMotionListener val$l;

        public AnonymousClass2(final View.OnGenericMotionListener val$l) {
            this.val$l = val$l;
        }

        @Override
        public boolean onGenericMotionEvent(View v10, MotionEvent event) {
            return this.val$l.onGenericMotion(v10, event);
        }
    }

    public class AnonymousClass3 extends AOnLongClickListener {
        final View.OnLongClickListener val$l;

        public AnonymousClass3(final View.OnLongClickListener val$l) {
            this.val$l = val$l;
        }

        @Override
        public boolean onLongClickEvent(View v10) {
            return this.val$l.onLongClick(v10);
        }
    }

    public class AnonymousClass4 extends AOnClickListener {
        final View.OnClickListener val$l;

        public AnonymousClass4(final View.OnClickListener val$l) {
            this.val$l = val$l;
        }

        @Override
        public void onClickEvent(View v10) {
            this.val$l.onClick(v10);
        }
    }

    public class AnonymousClass5 extends AOnTouchListener {
        final View.OnTouchListener val$l;

        public AnonymousClass5(final View.OnTouchListener val$l) {
            this.val$l = val$l;
        }

        @Override
        public boolean onTouchEvent(View v10, MotionEvent event) {
            return this.val$l.onTouch(v10, event);
        }
    }

    public class AnonymousClass6 extends AOnHoverListener {
        final View.OnHoverListener val$l;

        public AnonymousClass6(final View.OnHoverListener val$l) {
            this.val$l = val$l;
        }

        @Override
        public boolean onHoverEvent(View v10, MotionEvent event) {
            return this.val$l.onHover(v10, event);
        }
    }

    public class AnonymousClass7 extends AOnDragListener {
        final View.OnDragListener val$l;

        public AnonymousClass7(final View.OnDragListener val$l) {
            this.val$l = val$l;
        }

        @Override
        public boolean onDragEvent(View v10, DragEvent event) {
            return this.val$l.onDrag(v10, event);
        }
    }

    public class AnonymousClass8 extends AOnKeyListener {
        final View.OnKeyListener val$l;

        public AnonymousClass8(final View.OnKeyListener val$l) {
            this.val$l = val$l;
        }

        @Override
        public boolean onKeyEvent(View v10, int keyCode, KeyEvent event) {
            return this.val$l.onKey(v10, keyCode, event);
        }
    }

    public class AnonymousClass9 extends AOnScrollChangeListener {
        final View.OnScrollChangeListener val$l;

        public AnonymousClass9(final View.OnScrollChangeListener val$l) {
            this.val$l = val$l;
        }

        @Override
        public void onScrollChangeEvent(View v10, int scrollX, int scrollY, int oldScrollX, int oldScrollY) {
            this.val$l.onScrollChange(v10, scrollX, scrollY, oldScrollX, oldScrollY);
        }
    }

    public static void setImageFile(ImageView imageView, File file) {
        if (file == null) {
            throw new NullPointerException("file can`t be null");
        }
        if (imageView == null) {
            throw new NullPointerException("imageView can`t be null");
        }
        if (!file.exists()) {
            throw new RuntimeException("FileNotFoundException");
        }
    }

    public AImageView() {
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

    public void setImageFile(File file) {
        if (file == null) {
            throw new NullPointerException();
        }
        if (!file.exists()) {
            throw new RuntimeException("FileNotFoundException");
        }
    }

    @Override
    public void setOnGenericMotionListener(View.OnGenericMotionListener onGenericMotionListener) {
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
