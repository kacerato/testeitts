package com.jme3.util;

import java.io.PrintWriter;
import java.io.StringWriter;
import java.text.FieldPosition;
import java.text.MessageFormat;
import java.util.Date;
import java.util.logging.Formatter;
import java.util.logging.LogRecord;

public class JmeFormatter extends Formatter {
    private final Date calendar = new Date();
    private final Object[] args = new Object[1];
    private final StringBuffer store = new StringBuffer();
    private final String lineSeparator = System.getProperty("line.separator");
    private final MessageFormat format = new MessageFormat("{0,time}");

    @Override
    public String format(LogRecord logRecord) {
        StringBuilder sb2 = new StringBuilder();
        this.calendar.setTime(logRecord.getMillis());
        this.args[0] = this.calendar;
        this.store.setLength(0);
        String str = null;
        this.format.format(this.args, this.store, (FieldPosition) null);
        try {
            str = Class.forName(logRecord.getSourceClassName()).getSimpleName();
        } catch (ClassNotFoundException unused) {
        }
        sb2.append(logRecord.getLevel().getLocalizedName());
        sb2.append(" ");
        sb2.append(str);
        sb2.append(" ");
        sb2.append(this.store.toString());
        sb2.append(" ");
        sb2.append(formatMessage(logRecord));
        sb2.append(this.lineSeparator);
        if (logRecord.getThrown() != null) {
            try {
                StringWriter stringWriter = new StringWriter();
                PrintWriter printWriter = new PrintWriter(stringWriter);
                logRecord.getThrown().printStackTrace(printWriter);
                printWriter.close();
                sb2.append(stringWriter.toString());
            } catch (Exception unused2) {
            }
        }
        return sb2.toString();
    }
}
