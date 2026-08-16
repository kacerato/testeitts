package org.blacksquircle.ui.editorkit.plugin.linenumbers;

import F6.c;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Typeface;
import android.text.Editable;
import android.util.Log;
import android.view.MotionEvent;
import kotlin.jvm.internal.C14026x;
import kotlin.jvm.internal.M;
import org.blacksquircle.ui.editorkit.plugin.base.EditorPlugin;
import org.blacksquircle.ui.editorkit.utils.ExtensionsKt;
import org.blacksquircle.ui.editorkit.utils.RequestLineTips;
import org.blacksquircle.ui.editorkit.widget.TextProcessor;
import org.blacksquircle.ui.language.base.model.ColorScheme;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

public final class LineNumbersPlugin extends EditorPlugin {

    @NotNull
    public static final Companion Companion = new Companion(null);

    @NotNull
    public static final String PLUGIN_ID = "line-numbers-1141";

    @NotNull
    private final Paint gutterAlertLine;

    @NotNull
    private final Paint gutterCurrentLineNumberPaint;
    private int gutterDigitCount;

    @NotNull
    private final Paint gutterDividerPaint;

    @NotNull
    private final Paint gutterErrorLine;
    private final int gutterMargin;

    @NotNull
    private final Paint gutterPaint;

    @NotNull
    private final Paint gutterTextPaint;
    private int gutterWidth;
    private boolean highlightCurrentLine;
    private boolean lineNumbers;

    @NotNull
    private final Paint selectedLinePaint;

    public static final class Companion {
        public Companion(C14026x c14026x) {
            this();
        }

        public final int getDp(int i10) {
            return (int) (i10 * Resources.getSystem().getDisplayMetrics().density);
        }

        private Companion() {
        }
    }

    public LineNumbersPlugin() {
        super(PLUGIN_ID);
        this.lineNumbers = true;
        this.highlightCurrentLine = true;
        this.selectedLinePaint = new Paint();
        this.gutterPaint = new Paint();
        this.gutterDividerPaint = new Paint();
        this.gutterCurrentLineNumberPaint = new Paint();
        this.gutterErrorLine = new Paint();
        this.gutterAlertLine = new Paint();
        this.gutterTextPaint = new Paint();
        this.gutterMargin = Companion.getDp(4);
    }

    private final void updateGutter() {
        if (this.lineNumbers) {
            this.gutterDigitCount = String.valueOf(getLines().getLineCount()).length();
            int i10 = 0;
            float f10 = 0.0f;
            int i11 = 0;
            for (int i12 = 0; i12 < 10; i12++) {
                float measureText = getEditText().getPaint().measureText(String.valueOf(i12));
                if (measureText > f10) {
                    i11 = i12;
                    f10 = measureText;
                }
            }
            int i13 = this.gutterDigitCount;
            if (i13 < 3) {
                i13 = 3;
            }
            StringBuilder sb2 = new StringBuilder();
            if (i13 >= 0) {
                while (true) {
                    sb2.append(String.valueOf(i11));
                    if (i10 == i13) {
                        break;
                    } else {
                        i10++;
                    }
                }
            }
            this.gutterWidth = ((int) getEditText().getPaint().measureText(sb2.toString())) + this.gutterMargin;
        }
        if (getEditText().getPaddingStart() != this.gutterWidth + this.gutterMargin) {
            TextProcessor editText = getEditText();
            int i14 = this.gutterWidth;
            int i15 = this.gutterMargin;
            editText.setPadding(i14 + i15, i15, getEditText().getPaddingEnd(), getEditText().getPaddingBottom());
        }
    }

    @Override
    @c
    public void afterDraw(@Nullable Canvas canvas) {
        Paint paint;
        RequestLineTips.Type type;
        super.afterDraw(canvas);
        if (this.lineNumbers) {
            int lineForIndex = getLines().getLineForIndex(getEditText().getSelectionStart());
            if (canvas != null) {
                canvas.drawRect(getEditText().getScrollX(), getEditText().getScrollY(), this.gutterWidth + getEditText().getScrollX(), getEditText().getScrollY() + getEditText().getHeight(), this.gutterPaint);
            }
            int topVisibleLine = ExtensionsKt.getTopVisibleLine(getEditText());
            int i10 = topVisibleLine >= 2 ? topVisibleLine - 2 : 0;
            int scrollX = (this.gutterWidth - (this.gutterMargin / 2)) + getEditText().getScrollX();
            int i11 = -1;
            while (i10 <= ExtensionsKt.getBottomVisibleLine(getEditText())) {
                if (getEditText().getLayout() == null) {
                    return;
                }
                int lineForIndex2 = getLines().getLineForIndex(getEditText().getLayout().getLineStart(i10));
                if (lineForIndex2 != i11 && canvas != null) {
                    int i12 = lineForIndex2 + 1;
                    String valueOf = String.valueOf(i12);
                    float f10 = scrollX;
                    float lineBaseline = getEditText().getLayout().getLineBaseline(i10) + getEditText().getPaddingTop();
                    if (getEditText().getRequestLineTips() != null) {
                        RequestLineTips requestLineTips = getEditText().getRequestLineTips();
                        if (requestLineTips != null) {
                            type = requestLineTips.getTypeForLine(i12, i10 == ExtensionsKt.getBottomVisibleLine(getEditText()));
                        } else {
                            type = null;
                        }
                        paint = type == RequestLineTips.Type.Error ? this.gutterErrorLine : type == RequestLineTips.Type.Alert ? this.gutterAlertLine : (lineForIndex2 == lineForIndex && this.highlightCurrentLine) ? this.gutterCurrentLineNumberPaint : this.gutterTextPaint;
                    } else {
                        paint = (lineForIndex2 == lineForIndex && this.highlightCurrentLine) ? this.gutterCurrentLineNumberPaint : this.gutterTextPaint;
                    }
                    canvas.drawText(valueOf, f10, lineBaseline, paint);
                }
                i10++;
                i11 = lineForIndex2;
            }
            if (canvas != null) {
                canvas.drawLine(this.gutterWidth + getEditText().getScrollX(), getEditText().getScrollY(), this.gutterWidth + getEditText().getScrollX(), getEditText().getScrollY() + getEditText().getHeight(), this.gutterDividerPaint);
            }
        }
    }

    @Override
    public void afterTextChanged(@Nullable Editable editable) {
        super.afterTextChanged(editable);
        updateGutter();
    }

    @Override
    public void beforeDraw(@Nullable Canvas canvas) {
        int lineForIndex;
        super.beforeDraw(canvas);
        if (this.highlightCurrentLine && (lineForIndex = getLines().getLineForIndex(getEditText().getSelectionStart())) == getLines().getLineForIndex(getEditText().getSelectionEnd())) {
            if (getEditText().getLayout() == null) {
                return;
            }
            int indexForStartOfLine = getLines().getIndexForStartOfLine(lineForIndex);
            int indexForEndOfLine = getLines().getIndexForEndOfLine(lineForIndex);
            int lineForOffset = getEditText().getLayout().getLineForOffset(indexForStartOfLine);
            int lineForOffset2 = getEditText().getLayout().getLineForOffset(indexForEndOfLine);
            int lineTop = getEditText().getLayout().getLineTop(lineForOffset) + getEditText().getPaddingTop();
            int lineBottom = getEditText().getLayout().getLineBottom(lineForOffset2) + getEditText().getPaddingTop();
            int width = getEditText().getLayout().getWidth() + getEditText().getPaddingLeft() + getEditText().getPaddingRight();
            if (canvas != null) {
                canvas.drawRect(this.gutterWidth, lineTop, width, lineBottom, this.selectedLinePaint);
            }
        }
        updateGutter();
    }

    public final boolean getHighlightCurrentLine() {
        return this.highlightCurrentLine;
    }

    public final boolean getLineNumbers() {
        return this.lineNumbers;
    }

    @Override
    public void onAttached(@NotNull TextProcessor editText) {
        M.p(editText, "editText");
        super.onAttached(editText);
        Log.d(PLUGIN_ID, "LineNumbers plugin loaded successfully!");
    }

    @Override
    public void onColorSchemeChanged(@NotNull ColorScheme colorScheme) {
        M.p(colorScheme, "colorScheme");
        super.onColorSchemeChanged(colorScheme);
        this.selectedLinePaint.setColor(colorScheme.getSelectedLineColor());
        this.selectedLinePaint.setAntiAlias(false);
        this.selectedLinePaint.setDither(false);
        this.gutterPaint.setColor(colorScheme.getGutterColor());
        this.gutterPaint.setAntiAlias(false);
        this.gutterPaint.setDither(false);
        this.gutterDividerPaint.setColor(colorScheme.getGutterDividerColor());
        this.gutterDividerPaint.setAntiAlias(false);
        this.gutterDividerPaint.setDither(false);
        this.gutterDividerPaint.setStyle(Paint.Style.STROKE);
        this.gutterDividerPaint.setStrokeWidth(2.6f);
        this.gutterCurrentLineNumberPaint.setTextSize(requireContext().getResources().getDisplayMetrics().scaledDensity * getEditText().getTextSize());
        this.gutterCurrentLineNumberPaint.setColor(colorScheme.getGutterCurrentLineNumberColor());
        this.gutterCurrentLineNumberPaint.setAntiAlias(true);
        this.gutterCurrentLineNumberPaint.setDither(false);
        Paint paint = this.gutterCurrentLineNumberPaint;
        Paint.Align align = Paint.Align.RIGHT;
        paint.setTextAlign(align);
        this.gutterErrorLine.setTextSize(requireContext().getResources().getDisplayMetrics().scaledDensity * getEditText().getTextSize());
        this.gutterErrorLine.setColor(colorScheme.getGutterLineError());
        this.gutterErrorLine.setAntiAlias(true);
        this.gutterErrorLine.setDither(false);
        this.gutterErrorLine.setTextAlign(align);
        this.gutterAlertLine.setTextSize(requireContext().getResources().getDisplayMetrics().scaledDensity * getEditText().getTextSize());
        this.gutterAlertLine.setColor(colorScheme.getGutterLineAlert());
        this.gutterAlertLine.setAntiAlias(true);
        this.gutterAlertLine.setDither(false);
        this.gutterAlertLine.setTextAlign(align);
        this.gutterTextPaint.setTextSize(requireContext().getResources().getDisplayMetrics().scaledDensity * getEditText().getTextSize());
        this.gutterTextPaint.setColor(colorScheme.getGutterTextColor());
        this.gutterTextPaint.setAntiAlias(true);
        this.gutterTextPaint.setDither(false);
        this.gutterTextPaint.setTextAlign(align);
    }

    @Override
    @c
    public boolean onTouchEvent(@NotNull MotionEvent event) {
        M.p(event, "event");
        try {
            if (event.getAction() == 0 && getEditText().getRequestLineTips() != null) {
                int x10 = (int) event.getX();
                int y10 = (int) event.getY();
                if (x10 <= this.gutterWidth) {
                    int lineForVertical = getEditText().getLayout().getLineForVertical(y10 + getEditText().getScrollY());
                    N7.c.Y();
                    RequestLineTips requestLineTips = getEditText().getRequestLineTips();
                    if (requestLineTips != null) {
                        requestLineTips.showLineTips(lineForVertical, (int) event.getRawX(), (int) event.getRawY(), lineForVertical == ExtensionsKt.getBottomVisibleLine(getEditText()));
                    }
                }
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        return super.onTouchEvent(event);
    }

    public final void setHighlightCurrentLine(boolean z10) {
        this.highlightCurrentLine = z10;
    }

    public final void setLineNumbers(boolean z10) {
        this.lineNumbers = z10;
    }

    @Override
    public void setTextSize(float f10) {
        super.setTextSize(f10);
        this.gutterCurrentLineNumberPaint.setTextSize(getEditText().getTextSize());
        this.gutterErrorLine.setTextSize(getEditText().getTextSize());
        this.gutterAlertLine.setTextSize(getEditText().getTextSize());
        this.gutterTextPaint.setTextSize(getEditText().getTextSize());
    }

    @Override
    public void setTypeface(@Nullable Typeface typeface) {
        super.setTypeface(typeface);
        this.gutterCurrentLineNumberPaint.setTypeface(typeface);
        this.gutterErrorLine.setTypeface(typeface);
        this.gutterAlertLine.setTypeface(typeface);
        this.gutterTextPaint.setTypeface(typeface);
    }
}
