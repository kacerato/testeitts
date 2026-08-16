package org.blacksquircle.ui.editorkit.widget;

import F6.c;
import Lf.k;
import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.Typeface;
import android.text.Editable;
import android.util.AttributeSet;
import android.util.Log;
import android.view.ActionMode;
import android.view.KeyEvent;
import android.view.MotionEvent;
import androidx.core.text.PrecomputedTextCompat;
import com.itsmagic.engine2.R;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import kotlin.jvm.internal.C14026x;
import kotlin.jvm.internal.M;
import kotlin.jvm.internal.t0;
import org.blacksquircle.ui.editorkit.plugin.base.EditorPlugin;
import org.blacksquircle.ui.editorkit.plugin.base.PluginContainer;
import org.blacksquircle.ui.editorkit.plugin.base.PluginSupplier;
import org.blacksquircle.ui.editorkit.utils.OnTextChangeListener;
import org.blacksquircle.ui.editorkit.utils.RequestLineTips;
import org.blacksquircle.ui.editorkit.widget.TextProcessor;
import org.blacksquircle.ui.editorkit.widget.internal.SyntaxHighlightEditText;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import pf.S;

@t0({"SMAP\nTextProcessor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TextProcessor.kt\norg/blacksquircle/ui/editorkit/widget/TextProcessor\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,304:1\n1#2:305\n1807#3,3:306\n*S KotlinDebug\n*F\n+ 1 TextProcessor.kt\norg/blacksquircle/ui/editorkit/widget/TextProcessor\n*L\n301#1:306,3\n*E\n"})
public class TextProcessor extends SyntaxHighlightEditText implements PluginContainer {

    @NotNull
    public static final Companion Companion = new Companion(null);

    @NotNull
    private static final String TAG = "TextProcessor";

    @Nullable
    private OnTextChangeListener onTextChangeListener;

    @Nullable
    private OnTextSizeChangedListener onTextSizeChangedListener;

    @NotNull
    private final List<EditorPlugin> plugins;

    @Nullable
    private RequestLineTips requestLineTips;

    public static final class Companion {
        public Companion(C14026x c14026x) {
            this();
        }

        private Companion() {
        }
    }

    public interface OnTextSizeChangedListener {
        void onChanged(float f10);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @k
    public TextProcessor(@NotNull Context context) {
        this(context, null, 0, 6, null);
        M.p(context, "context");
    }

    public static final void onSelectionChanged$lambda$0(TextProcessor textProcessor, int i10, int i11) {
        Iterator<EditorPlugin> it = textProcessor.plugins.iterator();
        while (it.hasNext()) {
            it.next().onSelectionChanged(i10, i11);
        }
    }

    public static final void setTextSize$lambda$0(TextProcessor textProcessor, float f10) {
        Iterator<EditorPlugin> it = textProcessor.plugins.iterator();
        while (it.hasNext()) {
            it.next().setTextSize(f10);
        }
    }

    public static final void setTypeface$lambda$0(TextProcessor textProcessor, Typeface typeface) {
        Iterator<EditorPlugin> it = textProcessor.plugins.iterator();
        while (it.hasNext()) {
            it.next().setTypeface(typeface);
        }
    }

    @Override
    public void addLine(int i10, int i11, int i12) {
        super.addLine(i10, i11, i12);
        Iterator<EditorPlugin> it = this.plugins.iterator();
        while (it.hasNext()) {
            it.next().addLine(i10, i11, i12);
        }
    }

    @Override
    public void clearText() {
        super.clearText();
        Iterator<EditorPlugin> it = this.plugins.iterator();
        while (it.hasNext()) {
            it.next().setEmptyText();
        }
    }

    @Override
    public void doAfterTextChanged(@Nullable Editable editable) {
        super.doAfterTextChanged(editable);
        Iterator<EditorPlugin> it = this.plugins.iterator();
        while (it.hasNext()) {
            it.next().afterTextChanged(editable);
        }
    }

    @Override
    public void doBeforeTextChanged(@Nullable CharSequence charSequence, int i10, int i11, int i12) {
        super.doBeforeTextChanged(charSequence, i10, i11, i12);
        Iterator<EditorPlugin> it = this.plugins.iterator();
        while (it.hasNext()) {
            it.next().beforeTextChanged(charSequence, i10, i11, i12);
        }
    }

    @Override
    @c
    public void doOnTextChanged(@Nullable CharSequence charSequence, int i10, int i11, int i12) {
        super.doOnTextChanged(charSequence, i10, i11, i12);
        Iterator<EditorPlugin> it = this.plugins.iterator();
        while (it.hasNext()) {
            it.next().onTextChanged(charSequence, i10, i11, i12);
        }
        if (this.onTextChangeListener != null) {
            int lineForOffset = getLayout().getLineForOffset(getSelectionStart());
            float primaryHorizontal = getLayout().getPrimaryHorizontal(getSelectionStart());
            float paddingStart = primaryHorizontal + getPaddingStart();
            int lineBaseline = getLayout().getLineBaseline(lineForOffset) - getScrollY();
            setDropDownVerticalOffset((((int) getTextSize()) + lineBaseline) + ((int) N7.c.t().getResources().getDimension(R.dimen.codeview_line_error_dropdown_height)) > getVisibleHeight() ? lineBaseline - ((int) getTextSize()) : ((int) getTextSize()) + lineBaseline + ((int) N7.c.t().getResources().getDimension(R.dimen.codeview_line_error_dropdown_height)));
            OnTextChangeListener onTextChangeListener = this.onTextChangeListener;
            if (onTextChangeListener != null) {
                onTextChangeListener.afterTextChange(this, lineForOffset, getSelectionStart(), getSelectionEnd(), (int) paddingStart, lineBaseline);
            }
        }
    }

    @Override
    @Nullable
    public <T extends EditorPlugin> T findPlugin(@NotNull String pluginId) {
        EditorPlugin editorPlugin;
        M.p(pluginId, "pluginId");
        Iterator<EditorPlugin> it = this.plugins.iterator();
        while (true) {
            if (!it.hasNext()) {
                editorPlugin = null;
                break;
            }
            editorPlugin = it.next();
            if (M.g(editorPlugin.getPluginId(), pluginId)) {
                break;
            }
        }
        if (editorPlugin instanceof EditorPlugin) {
            return (T) editorPlugin;
        }
        return null;
    }

    @Nullable
    public final OnTextChangeListener getOnTextChangeListener() {
        return this.onTextChangeListener;
    }

    @Nullable
    public final OnTextSizeChangedListener getOnTextSizeChangedListener() {
        return this.onTextSizeChangedListener;
    }

    @Nullable
    public final RequestLineTips getRequestLineTips() {
        return this.requestLineTips;
    }

    @c
    public final int getVisibleHeight() {
        Rect rect = new Rect();
        getWindowVisibleDisplayFrame(rect);
        return rect.bottom - rect.top;
    }

    @Override
    public boolean hasPlugin(@NotNull String pluginId) {
        M.p(pluginId, "pluginId");
        List<EditorPlugin> list = this.plugins;
        if ((list instanceof Collection) && list.isEmpty()) {
            return false;
        }
        Iterator<EditorPlugin> it = list.iterator();
        while (it.hasNext()) {
            if (M.g(it.next().getPluginId(), pluginId)) {
                return true;
            }
        }
        return false;
    }

    @Override
    public <T extends EditorPlugin> void installPlugin(@NotNull T plugin) {
        M.p(plugin, "plugin");
        if (!hasPlugin(plugin.getPluginId())) {
            this.plugins.add(plugin);
            plugin.onAttached(this);
            return;
        }
        Log.e(TAG, "Plugin " + ((Object) plugin) + " is already attached.");
    }

    @Override
    public void onColorSchemeChanged() {
        super.onColorSchemeChanged();
        Iterator<EditorPlugin> it = this.plugins.iterator();
        while (it.hasNext()) {
            it.next().onColorSchemeChanged(getColorScheme());
        }
    }

    @Override
    public void onDraw(@NotNull Canvas canvas) {
        M.p(canvas, "canvas");
        Iterator<EditorPlugin> it = this.plugins.iterator();
        while (it.hasNext()) {
            it.next().beforeDraw(canvas);
        }
        super.onDraw(canvas);
        Iterator<EditorPlugin> it2 = this.plugins.iterator();
        while (it2.hasNext()) {
            it2.next().afterDraw(canvas);
        }
    }

    @Override
    public boolean onKeyDown(int i10, @Nullable KeyEvent keyEvent) {
        Iterator<EditorPlugin> it = this.plugins.iterator();
        while (it.hasNext()) {
            if (it.next().onKeyDown(i10, keyEvent)) {
                return true;
            }
        }
        return super.onKeyDown(i10, keyEvent);
    }

    @Override
    public boolean onKeyUp(int i10, @Nullable KeyEvent keyEvent) {
        Iterator<EditorPlugin> it = this.plugins.iterator();
        while (it.hasNext()) {
            if (it.next().onKeyUp(i10, keyEvent)) {
                return true;
            }
        }
        return super.onKeyUp(i10, keyEvent);
    }

    @Override
    public void onLanguageChanged() {
        super.onLanguageChanged();
        Iterator<EditorPlugin> it = this.plugins.iterator();
        while (it.hasNext()) {
            it.next().onLanguageChanged(getLanguage());
        }
    }

    @Override
    public void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
        super.onLayout(z10, i10, i11, i12, i13);
        Iterator<EditorPlugin> it = this.plugins.iterator();
        while (it.hasNext()) {
            it.next().onLayout(z10, i10, i11, i12, i13);
        }
    }

    @Override
    public void onMeasure(int i10, int i11) {
        super.onMeasure(i10, i11);
        Iterator<EditorPlugin> it = this.plugins.iterator();
        while (it.hasNext()) {
            it.next().onMeasure(i10, i11);
        }
    }

    @Override
    public void onScrollChanged(int i10, int i11, int i12, int i13) {
        super.onScrollChanged(i10, i11, i12, i13);
        Iterator<EditorPlugin> it = this.plugins.iterator();
        while (it.hasNext()) {
            it.next().onScrollChanged(i10, i11, i12, i13);
        }
    }

    @Override
    public void onSelectionChanged(final int i10, final int i11) {
        super.onSelectionChanged(i10, i11);
        post(new Runnable() {
            @Override
            public final void run() {
                TextProcessor.onSelectionChanged$lambda$0(TextProcessor.this, i10, i11);
            }
        });
    }

    @Override
    public void onSizeChanged(int i10, int i11, int i12, int i13) {
        super.onSizeChanged(i10, i11, i12, i13);
        Iterator<EditorPlugin> it = this.plugins.iterator();
        while (it.hasNext()) {
            it.next().onSizeChanged(i10, i11, i12, i13);
        }
    }

    @Override
    @SuppressLint({"ClickableViewAccessibility"})
    public boolean onTouchEvent(@NotNull MotionEvent event) {
        M.p(event, "event");
        Iterator<EditorPlugin> it = this.plugins.iterator();
        while (it.hasNext()) {
            if (it.next().onTouchEvent(event)) {
                return true;
            }
        }
        return super.onTouchEvent(event);
    }

    @Override
    public void plugins(@NotNull PluginSupplier supplier) {
        M.p(supplier, "supplier");
        Set h62 = S.h6(this.plugins, supplier.supply());
        Iterator it = S.A5(h62, S.n3(h62, supplier.supply())).iterator();
        while (it.hasNext()) {
            uninstallPlugin(((EditorPlugin) it.next()).getPluginId());
        }
        Iterator<EditorPlugin> it2 = supplier.supply().iterator();
        while (it2.hasNext()) {
            installPlugin(it2.next());
        }
    }

    @Override
    public void removeLine(int i10) {
        super.removeLine(i10);
        Iterator<EditorPlugin> it = this.plugins.iterator();
        while (it.hasNext()) {
            it.next().removeLine(i10);
        }
    }

    @Override
    public void replaceText(int i10, int i11, @NotNull CharSequence newText) {
        M.p(newText, "newText");
        super.replaceText(i10, i11, newText);
        Iterator<EditorPlugin> it = this.plugins.iterator();
        while (it.hasNext()) {
            it.next().onTextReplaced(i10, i11, newText);
        }
    }

    @Override
    public void setCustomSelectionActionModeCallback(@Nullable ActionMode.Callback callback) {
        super.setCustomSelectionActionModeCallback(callback);
    }

    public final void setOnTextChangeListener(@Nullable OnTextChangeListener onTextChangeListener) {
        this.onTextChangeListener = onTextChangeListener;
    }

    public final void setOnTextSizeChangedListener(@Nullable OnTextSizeChangedListener onTextSizeChangedListener) {
        this.onTextSizeChangedListener = onTextSizeChangedListener;
    }

    public final void setRequestLineTips(@Nullable RequestLineTips requestLineTips) {
        this.requestLineTips = requestLineTips;
    }

    @Override
    public void setTextContent(@NotNull PrecomputedTextCompat textParams) {
        M.p(textParams, "textParams");
        Iterator<EditorPlugin> it = this.plugins.iterator();
        while (it.hasNext()) {
            it.next().clearLines();
        }
        super.setTextContent(textParams);
        Iterator<EditorPlugin> it2 = this.plugins.iterator();
        while (it2.hasNext()) {
            it2.next().setTextContent(textParams);
        }
    }

    @Override
    public void setTextSize(final float f10) {
        super.setTextSize(f10);
        post(new Runnable() {
            @Override
            public final void run() {
                TextProcessor.setTextSize$lambda$0(TextProcessor.this, f10);
            }
        });
        OnTextSizeChangedListener onTextSizeChangedListener = this.onTextSizeChangedListener;
        if (onTextSizeChangedListener != null) {
            onTextSizeChangedListener.onChanged(f10);
        }
    }

    @Override
    public void setTypeface(@Nullable final Typeface typeface) {
        super.setTypeface(typeface);
        post(new Runnable() {
            @Override
            public final void run() {
                TextProcessor.setTypeface$lambda$0(TextProcessor.this, typeface);
            }
        });
    }

    @Override
    public void showDropDown() {
        super.showDropDown();
        Iterator<EditorPlugin> it = this.plugins.iterator();
        while (it.hasNext()) {
            it.next().showDropDown();
        }
    }

    @Override
    public void uninstallPlugin(@NotNull String pluginId) {
        M.p(pluginId, "pluginId");
        if (hasPlugin(pluginId)) {
            EditorPlugin findPlugin = findPlugin(pluginId);
            if (findPlugin != null) {
                this.plugins.remove(findPlugin);
                findPlugin.onDetached(this);
                return;
            }
            return;
        }
        Log.e(TAG, "Plugin " + pluginId + " is not attached.");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @k
    public TextProcessor(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
        M.p(context, "context");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @k
    public TextProcessor(@NotNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        M.p(context, "context");
        this.plugins = new ArrayList();
    }

    public TextProcessor(Context context, AttributeSet attributeSet, int i10, int i11, C14026x c14026x) {
        this(context, (i11 & 2) != 0 ? null : attributeSet, (i11 & 4) != 0 ? R.attr.autoCompleteTextViewStyle : i10);
    }
}
