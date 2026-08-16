package org.openjdk.tools.javac.code;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.openjdk.tools.javac.tree.EndPosTable;
import org.openjdk.tools.javac.tree.JCTree;
import org.openjdk.tools.javac.util.Assert;
import org.openjdk.tools.javac.util.Context;
import org.openjdk.tools.javac.util.JCDiagnostic;
import org.openjdk.tools.javac.util.ListBuffer;

public class DeferredLintHandler {
    private JCDiagnostic.DiagnosticPosition currentPos;
    private Map<JCDiagnostic.DiagnosticPosition, ListBuffer<LintLogger>> loggersQueue = new HashMap();
    protected static final Context.Key<DeferredLintHandler> deferredLintHandlerKey = new Context.Key<>();
    private static final JCDiagnostic.DiagnosticPosition IMMEDIATE_POSITION = new JCDiagnostic.DiagnosticPosition() {
        @Override
        public int getEndPosition(EndPosTable endPosTable) {
            Assert.error();
            return -1;
        }

        @Override
        public int getPreferredPosition() {
            Assert.error();
            return -1;
        }

        @Override
        public int getStartPosition() {
            Assert.error();
            return -1;
        }

        @Override
        public JCTree getTree() {
            Assert.error();
            return null;
        }
    };

    public interface LintLogger {
        void report();
    }

    public DeferredLintHandler(Context context) {
        context.put((Context.Key<Context.Key<DeferredLintHandler>>) deferredLintHandlerKey, (Context.Key<DeferredLintHandler>) this);
        this.currentPos = IMMEDIATE_POSITION;
    }

    public static DeferredLintHandler instance(Context context) {
        DeferredLintHandler deferredLintHandler = (DeferredLintHandler) context.get(deferredLintHandlerKey);
        return deferredLintHandler == null ? new DeferredLintHandler(context) : deferredLintHandler;
    }

    public void flush(JCDiagnostic.DiagnosticPosition diagnosticPosition) {
        ListBuffer<LintLogger> listBuffer = this.loggersQueue.get(diagnosticPosition);
        if (listBuffer != null) {
            Iterator<LintLogger> it = listBuffer.iterator();
            while (it.hasNext()) {
                it.next().report();
            }
            this.loggersQueue.remove(diagnosticPosition);
        }
    }

    public JCDiagnostic.DiagnosticPosition immediate() {
        return setPos(IMMEDIATE_POSITION);
    }

    public void report(LintLogger lintLogger) {
        JCDiagnostic.DiagnosticPosition diagnosticPosition = this.currentPos;
        if (diagnosticPosition == IMMEDIATE_POSITION) {
            lintLogger.report();
            return;
        }
        ListBuffer<LintLogger> listBuffer = this.loggersQueue.get(diagnosticPosition);
        if (listBuffer == null) {
            Map<JCDiagnostic.DiagnosticPosition, ListBuffer<LintLogger>> map = this.loggersQueue;
            JCDiagnostic.DiagnosticPosition diagnosticPosition2 = this.currentPos;
            ListBuffer<LintLogger> listBuffer2 = new ListBuffer<>();
            map.put(diagnosticPosition2, listBuffer2);
            listBuffer = listBuffer2;
        }
        listBuffer.append(lintLogger);
    }

    public JCDiagnostic.DiagnosticPosition setPos(JCDiagnostic.DiagnosticPosition diagnosticPosition) {
        JCDiagnostic.DiagnosticPosition diagnosticPosition2 = this.currentPos;
        this.currentPos = diagnosticPosition;
        return diagnosticPosition2;
    }
}
