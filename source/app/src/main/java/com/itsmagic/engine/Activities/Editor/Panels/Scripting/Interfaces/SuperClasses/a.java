package com.itsmagic.engine.Activities.Editor.Panels.Scripting.Interfaces.SuperClasses;

import Mf.l;
import android.content.Context;
import com.itsmagic.engine.Activities.Editor.Panels.Scripting.Interfaces.SuperClasses.a;
import kotlin.jvm.internal.C14026x;
import kotlin.jvm.internal.M;
import nf.P0;
import org.blacksquircle.ui.editorkit.plugin.autocomplete.AutoCompletePlugin;
import org.blacksquircle.ui.editorkit.plugin.autoindent.AutoIndentPlugin;
import org.blacksquircle.ui.editorkit.plugin.base.PluginSupplier;
import org.blacksquircle.ui.editorkit.plugin.linenumbers.LineNumbersPlugin;
import org.blacksquircle.ui.editorkit.plugin.pinchzoom.ActionsKt;
import org.blacksquircle.ui.editorkit.plugin.pinchzoom.PinchZoomPlugin;
import org.blacksquircle.ui.editorkit.widget.TextProcessor;
import org.jetbrains.annotations.NotNull;

public final class a {

    @NotNull
    public static final C1139a f71892a = new C1139a(null);

    public static final class C1139a {
        public C1139a(C14026x c14026x) {
            this();
        }

        public static final P0 g(final Context context, PluginSupplier create) {
            M.p(create, "$this$create");
            ActionsKt.pinchZoom(create, new l() {
                @Override
                public final Object invoke(Object obj) {
                    P0 h10;
                    h10 = a.C1139a.h((PinchZoomPlugin) obj);
                    return h10;
                }
            });
            org.blacksquircle.ui.editorkit.plugin.linenumbers.ActionsKt.lineNumbers(create, new l() {
                @Override
                public final Object invoke(Object obj) {
                    P0 i10;
                    i10 = a.C1139a.i((LineNumbersPlugin) obj);
                    return i10;
                }
            });
            org.blacksquircle.ui.editorkit.plugin.delimiters.ActionsKt.highlightDelimiters$default(create, null, 1, null);
            org.blacksquircle.ui.editorkit.plugin.autoindent.ActionsKt.autoIndentation(create, new l() {
                @Override
                public final Object invoke(Object obj) {
                    P0 j10;
                    j10 = a.C1139a.j((AutoIndentPlugin) obj);
                    return j10;
                }
            });
            org.blacksquircle.ui.editorkit.plugin.autocomplete.ActionsKt.codeCompletion(create, new l() {
                @Override
                public final Object invoke(Object obj) {
                    P0 k10;
                    k10 = a.C1139a.k(Context.this, (AutoCompletePlugin) obj);
                    return k10;
                }
            });
            return P0.f98194a;
        }

        public static final P0 h(PinchZoomPlugin pinchZoom) {
            M.p(pinchZoom, "$this$pinchZoom");
            pinchZoom.setMinTextSize(4.0f);
            pinchZoom.setMaxTextSize(40.0f);
            return P0.f98194a;
        }

        public static final P0 i(LineNumbersPlugin lineNumbers) {
            M.p(lineNumbers, "$this$lineNumbers");
            lineNumbers.setLineNumbers(true);
            lineNumbers.setHighlightCurrentLine(true);
            return P0.f98194a;
        }

        public static final P0 j(AutoIndentPlugin autoIndentation) {
            M.p(autoIndentation, "$this$autoIndentation");
            autoIndentation.setAutoIndentLines(true);
            autoIndentation.setAutoCloseBrackets(false);
            autoIndentation.setAutoCloseQuotes(false);
            return P0.f98194a;
        }

        public static final P0 k(Context context, AutoCompletePlugin codeCompletion) {
            M.p(codeCompletion, "$this$codeCompletion");
            codeCompletion.setSuggestionAdapter(new F6.a(context));
            return P0.f98194a;
        }

        public final void f(@NotNull TextProcessor editor, @NotNull final Context context) {
            M.p(editor, "editor");
            M.p(context, "context");
            editor.plugins(PluginSupplier.Companion.create(new l() {
                @Override
                public final Object invoke(Object obj) {
                    P0 g10;
                    g10 = a.C1139a.g(Context.this, (PluginSupplier) obj);
                    return g10;
                }
            }));
        }

        public C1139a() {
        }
    }
}
