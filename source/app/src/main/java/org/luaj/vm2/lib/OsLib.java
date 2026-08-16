package org.luaj.vm2.lib;

import Tj.d;
import android.provider.MediaStore;
import android.provider.Telephony;
import android.text.format.DateUtils;
import java.io.IOException;
import java.util.Calendar;
import java.util.Date;
import org.eclipse.jdt.core.Signature;
import org.eclipse.jdt.internal.compiler.codegen.Opcodes;
import org.luaj.vm2.Buffer;
import org.luaj.vm2.Globals;
import org.luaj.vm2.LuaTable;
import org.luaj.vm2.LuaValue;
import org.luaj.vm2.Varargs;

public class OsLib extends TwoArgFunction {
    private static final int CLOCK = 0;
    private static final int DATE = 1;
    private static final int DIFFTIME = 2;
    private static final int EXECUTE = 3;
    private static final int EXIT = 4;
    private static final int GETENV = 5;
    private static final String[] MonthName;
    private static final String[] MonthNameAbbrev;
    private static final String[] NAMES = {"clock", "date", "difftime", "execute", "exit", "getenv", "remove", "rename", "setlocale", "time", "tmpname"};
    private static final int REMOVE = 6;
    private static final int RENAME = 7;
    private static final int SETLOCALE = 8;
    private static final int TIME = 9;
    private static final int TMPNAME = 10;
    public static String TMP_PREFIX = ".luaj";
    public static String TMP_SUFFIX = "tmp";
    private static final String[] WeekdayName;
    private static final String[] WeekdayNameAbbrev;
    static Class class$org$luaj$vm2$lib$OsLib;

    private static final long f102799t0;
    private static long tmpnames;
    protected Globals globals;

    public class OsLibFunc extends VarArgFunction {
        public OsLibFunc(int i10, String str) {
            this.opcode = i10;
            this.name = str;
        }

        @Override
        public Varargs invoke(Varargs varargs) {
            try {
                switch (this.opcode) {
                    case 0:
                        return LuaValue.valueOf(OsLib.this.clock());
                    case 1:
                        String optjstring = varargs.optjstring(1, "%c");
                        double time = varargs.isnumber(2) ? varargs.todouble(2) : OsLib.this.time(null);
                        if (!optjstring.equals("*t")) {
                            OsLib osLib = OsLib.this;
                            if (time == -1.0d) {
                                time = osLib.time(null);
                            }
                            return LuaValue.valueOf(osLib.date(optjstring, time));
                        }
                        Calendar calendar = Calendar.getInstance();
                        calendar.setTime(new Date((long) (time * 1000.0d)));
                        LuaTable tableOf = LuaValue.tableOf();
                        tableOf.set(MediaStore.Audio.AudioColumns.YEAR, LuaValue.valueOf(calendar.get(1)));
                        tableOf.set("month", LuaValue.valueOf(calendar.get(2) + 1));
                        tableOf.set("day", LuaValue.valueOf(calendar.get(5)));
                        tableOf.set("hour", LuaValue.valueOf(calendar.get(11)));
                        tableOf.set("min", LuaValue.valueOf(calendar.get(12)));
                        tableOf.set("sec", LuaValue.valueOf(calendar.get(13)));
                        tableOf.set("wday", LuaValue.valueOf(calendar.get(7)));
                        tableOf.set("yday", LuaValue.valueOf(calendar.get(6)));
                        tableOf.set("isdst", LuaValue.valueOf(OsLib.this.isDaylightSavingsTime(calendar)));
                        return tableOf;
                    case 2:
                        return LuaValue.valueOf(OsLib.this.difftime(varargs.checkdouble(1), varargs.checkdouble(2)));
                    case 3:
                        return OsLib.this.execute(varargs.optjstring(1, null));
                    case 4:
                        OsLib.this.exit(varargs.optint(1, 0));
                        return LuaValue.NONE;
                    case 5:
                        String str = OsLib.this.getenv(varargs.checkjstring(1));
                        return str != null ? LuaValue.valueOf(str) : LuaValue.NIL;
                    case 6:
                        OsLib.this.remove(varargs.checkjstring(1));
                        return LuaValue.TRUE;
                    case 7:
                        OsLib.this.rename(varargs.checkjstring(1), varargs.checkjstring(2));
                        return LuaValue.TRUE;
                    case 8:
                        String str2 = OsLib.this.setlocale(varargs.optjstring(1, null), varargs.optjstring(2, d.f25405q));
                        return str2 != null ? LuaValue.valueOf(str2) : LuaValue.NIL;
                    case 9:
                        return LuaValue.valueOf(OsLib.this.time(varargs.opttable(1, null)));
                    case 10:
                        return LuaValue.valueOf(OsLib.this.tmpname());
                    default:
                        return LuaValue.NONE;
                }
            } catch (IOException e10) {
                return LuaValue.varargsOf(LuaValue.NIL, LuaValue.valueOf(e10.getMessage()));
            }
        }
    }

    static {
        long currentTimeMillis = System.currentTimeMillis();
        f102799t0 = currentTimeMillis;
        tmpnames = currentTimeMillis;
        WeekdayNameAbbrev = new String[]{"Sun", "Mon", "Tue", "Wed", "Thu", "Fri", "Sat"};
        WeekdayName = new String[]{"Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"};
        MonthNameAbbrev = new String[]{"Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"};
        MonthName = new String[]{"January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"};
    }

    private Calendar beginningOfYear(Calendar calendar) {
        Calendar calendar2 = Calendar.getInstance();
        calendar2.setTime(calendar.getTime());
        calendar2.set(2, 0);
        calendar2.set(5, 1);
        calendar2.set(11, 0);
        calendar2.set(12, 0);
        calendar2.set(13, 0);
        calendar2.set(14, 0);
        return calendar2;
    }

    public static Class class$(String str) {
        try {
            return Class.forName(str);
        } catch (ClassNotFoundException e10) {
            throw new NoClassDefFoundError(e10.getMessage());
        }
    }

    public boolean isDaylightSavingsTime(Calendar calendar) {
        return timeZoneOffset(calendar) != calendar.getTimeZone().getRawOffset() / 1000;
    }

    private int timeZoneOffset(Calendar calendar) {
        return calendar.getTimeZone().getOffset(1, calendar.get(1), calendar.get(2), calendar.get(5), calendar.get(7), (((calendar.get(11) * 3600) + (calendar.get(12) * 60)) + calendar.get(13)) * 1000) / 1000;
    }

    private int weekNumber(Calendar calendar, int i10) {
        Calendar beginningOfYear = beginningOfYear(calendar);
        int i11 = i10 + 8;
        beginningOfYear.set(5, ((i11 - beginningOfYear.get(7)) % 7) + 1);
        if (beginningOfYear.after(calendar)) {
            beginningOfYear.set(1, beginningOfYear.get(1) - 1);
            beginningOfYear.set(5, ((i11 - beginningOfYear.get(7)) % 7) + 1);
        }
        return ((int) ((calendar.getTime().getTime() - beginningOfYear.getTime().getTime()) / DateUtils.WEEK_IN_MILLIS)) + 1;
    }

    @Override
    public LuaValue call(LuaValue luaValue, LuaValue luaValue2) {
        this.globals = luaValue2.checkglobals();
        LuaTable luaTable = new LuaTable();
        int i10 = 0;
        while (true) {
            String[] strArr = NAMES;
            if (i10 >= strArr.length) {
                luaValue2.set("os", luaTable);
                luaValue2.get(Telephony.Sms.Intents.EXTRA_PACKAGE_NAME).get("loaded").set("os", luaTable);
                return luaTable;
            }
            String str = strArr[i10];
            luaTable.set(str, new OsLibFunc(i10, str));
            i10++;
        }
    }

    public double clock() {
        return (System.currentTimeMillis() - f102799t0) / 1000.0d;
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:39:0x0088. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:40:0x008b. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:41:0x008e. Please report as an issue. */
    public String date(String str, double d10) {
        int i10;
        int i11;
        String substring;
        int i12;
        int weekNumber;
        String str2;
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(new Date((long) (d10 * 1000.0d)));
        if (str.startsWith("!")) {
            d10 -= timeZoneOffset(calendar);
            calendar.setTime(new Date((long) (1000.0d * d10)));
            str = str.substring(1);
        }
        byte[] bytes = str.getBytes();
        int length = bytes.length;
        Buffer buffer = new Buffer(length);
        int i13 = 0;
        while (i13 < length) {
            int i14 = i13 + 1;
            byte b10 = bytes[i13];
            if (b10 == 10) {
                buffer.append("\n");
            } else if (b10 != 37) {
                buffer.append(b10);
            } else if (i14 < length) {
                i13 += 2;
                byte b11 = bytes[i14];
                if (b11 != 37) {
                    if (b11 != 77) {
                        if (b11 != 83) {
                            if (b11 != 85) {
                                if (b11 == 106) {
                                    i11 = ((int) ((calendar.getTime().getTime() - beginningOfYear(calendar).getTime().getTime()) / 86400000)) + 1001;
                                } else if (b11 != 109) {
                                    if (b11 == 112) {
                                        substring = calendar.get(11) < 12 ? "AM" : "PM";
                                    } else if (b11 == 65) {
                                        substring = WeekdayName[calendar.get(7) - 1];
                                    } else if (b11 == 66) {
                                        substring = MonthName[calendar.get(2)];
                                    } else if (b11 == 72) {
                                        i10 = calendar.get(11);
                                    } else if (b11 != 73) {
                                        switch (b11) {
                                            case 87:
                                                weekNumber = weekNumber(calendar, 1);
                                                break;
                                            case 88:
                                                str2 = "%H:%M:%S";
                                                substring = date(str2, d10);
                                                break;
                                            case 89:
                                                weekNumber = calendar.get(1);
                                                break;
                                            default:
                                                switch (b11) {
                                                    case 97:
                                                        substring = WeekdayNameAbbrev[calendar.get(7) - 1];
                                                        break;
                                                    case 98:
                                                        substring = MonthNameAbbrev[calendar.get(2)];
                                                        break;
                                                    case 99:
                                                        str2 = "%a %b %d %H:%M:%S %Y";
                                                        substring = date(str2, d10);
                                                        break;
                                                    case 100:
                                                        i12 = 5;
                                                        break;
                                                    default:
                                                        switch (b11) {
                                                            case 119:
                                                                weekNumber = (calendar.get(7) + 6) % 7;
                                                                break;
                                                            case 120:
                                                                str2 = "%m/%d/%y";
                                                                substring = date(str2, d10);
                                                                break;
                                                            case 121:
                                                                substring = String.valueOf(calendar.get(1)).substring(2);
                                                                break;
                                                            case 122:
                                                                int timeZoneOffset = timeZoneOffset(calendar) / 60;
                                                                int abs = Math.abs(timeZoneOffset);
                                                                String substring2 = String.valueOf((abs / 60) + 100).substring(1);
                                                                String substring3 = String.valueOf((abs % 60) + 100).substring(1);
                                                                StringBuffer stringBuffer = new StringBuffer();
                                                                stringBuffer.append(timeZoneOffset >= 0 ? "+" : "-");
                                                                stringBuffer.append(substring2);
                                                                stringBuffer.append(substring3);
                                                                substring = stringBuffer.toString();
                                                                break;
                                                            default:
                                                                StringBuffer stringBuffer2 = new StringBuffer();
                                                                stringBuffer2.append("invalid conversion specifier '%");
                                                                stringBuffer2.append((int) b11);
                                                                stringBuffer2.append("'");
                                                                LuaValue.argerror(1, stringBuffer2.toString());
                                                                break;
                                                        }
                                                }
                                        }
                                    } else {
                                        i10 = calendar.get(11) % 12;
                                    }
                                    buffer.append(substring);
                                } else {
                                    i11 = calendar.get(2) + 101;
                                }
                                substring = String.valueOf(i11).substring(1);
                                buffer.append(substring);
                            } else {
                                weekNumber = weekNumber(calendar, 0);
                            }
                            substring = String.valueOf(weekNumber);
                            buffer.append(substring);
                        } else {
                            i12 = 13;
                        }
                        i10 = calendar.get(i12);
                    } else {
                        i10 = calendar.get(12);
                    }
                    i11 = i10 + 100;
                    substring = String.valueOf(i11).substring(1);
                    buffer.append(substring);
                } else {
                    buffer.append(Opcodes.OPC_fload_3);
                }
            }
            i13 = i14;
        }
        return buffer.tojstring();
    }

    public double difftime(double d10, double d11) {
        return d10 - d11;
    }

    public Varargs execute(String str) {
        return LuaValue.varargsOf(LuaValue.NIL, LuaValue.valueOf("exit"), LuaValue.ONE);
    }

    public void exit(int i10) {
        System.exit(i10);
    }

    public String getenv(String str) {
        return System.getProperty(str);
    }

    public void remove(String str) throws IOException {
        throw new IOException("not implemented");
    }

    public void rename(String str, String str2) throws IOException {
        throw new IOException("not implemented");
    }

    public String setlocale(String str, String str2) {
        return Signature.SIG_CHAR;
    }

    public double time(LuaTable luaTable) {
        Date time;
        if (luaTable == null) {
            time = new Date();
        } else {
            Calendar calendar = Calendar.getInstance();
            calendar.set(1, luaTable.get(MediaStore.Audio.AudioColumns.YEAR).checkint());
            calendar.set(2, luaTable.get("month").checkint() - 1);
            calendar.set(5, luaTable.get("day").checkint());
            calendar.set(11, luaTable.get("hour").optint(12));
            calendar.set(12, luaTable.get("min").optint(0));
            calendar.set(13, luaTable.get("sec").optint(0));
            calendar.set(14, 0);
            time = calendar.getTime();
        }
        return time.getTime() / 1000.0d;
    }

    public String tmpname() {
        String stringBuffer;
        Class cls = class$org$luaj$vm2$lib$OsLib;
        if (cls == null) {
            cls = class$("org.luaj.vm2.lib.OsLib");
            class$org$luaj$vm2$lib$OsLib = cls;
        }
        synchronized (cls) {
            StringBuffer stringBuffer2 = new StringBuffer();
            stringBuffer2.append(TMP_PREFIX);
            long j10 = tmpnames;
            tmpnames = 1 + j10;
            stringBuffer2.append(j10);
            stringBuffer2.append(TMP_SUFFIX);
            stringBuffer = stringBuffer2.toString();
        }
        return stringBuffer;
    }
}
