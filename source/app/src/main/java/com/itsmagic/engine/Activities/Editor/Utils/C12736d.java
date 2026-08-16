package com.itsmagic.engine.Activities.Editor.Utils;

import android.view.WindowManager;
import java.sql.Timestamp;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.ZoneId;
import java.time.format.DateTimeFormatter;
import java.time.temporal.ChronoUnit;
import java.time.temporal.TemporalUnit;
import java.util.Calendar;
import java.util.Date;
import java.util.Locale;
import java.util.TimeZone;
import java.util.concurrent.TimeUnit;
import javax.annotation.Nullable;

public class C12736d {

    public static final String f72115a = "HH:mm:ss dd-MM-yyyy";

    public static final long f72116b = 86400000;

    public static final Calendar f72117c = Calendar.getInstance();

    public static int A(String start, String end) {
        return (int) TimeUnit.SECONDS.convert(f(end).getTime() - f(start).getTime(), TimeUnit.MILLISECONDS);
    }

    public static int B(String checkDate) {
        return A(m(), checkDate);
    }

    public static String C(Date date) {
        if (date == null) {
            return null;
        }
        return new SimpleDateFormat(f72115a, Locale.US).format(date);
    }

    public static String D(String dateString) {
        Date date;
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat(f72115a, Locale.US);
        simpleDateFormat.setTimeZone(TimeZone.getTimeZone("UTC"));
        try {
            date = simpleDateFormat.parse(dateString);
        } catch (ParseException e10) {
            e10.printStackTrace();
            date = null;
        }
        TimeZone timeZone = TimeZone.getDefault();
        SimpleDateFormat simpleDateFormat2 = new SimpleDateFormat(f72115a, Locale.US);
        simpleDateFormat2.setTimeZone(timeZone);
        return simpleDateFormat2.format(date);
    }

    public static String a(String dt) {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat(f72115a, Locale.US);
        simpleDateFormat.setTimeZone(TimeZone.getTimeZone("UTC"));
        try {
            return b(simpleDateFormat.parse(dt));
        } catch (ParseException e10) {
            e10.printStackTrace();
            return dt;
        }
    }

    public static String b(Date date) {
        long time = (new Date().getTime() - date.getTime()) / 1000;
        long j10 = time / 60;
        long j11 = j10 / 60;
        long j12 = j11 / 24;
        long j13 = j12 / 7;
        long j14 = j12 / 30;
        long j15 = j12 / 365;
        if (time < 60) {
            return "a few seconds ago";
        }
        if (j10 < 60) {
            return "" + j10 + " minutes ago";
        }
        if (j11 < 24) {
            return "" + j11 + " hours ago";
        }
        if (j12 == 1) {
            return "yesterday";
        }
        if (j12 < 7) {
            return "" + j12 + " days ago";
        }
        if (j13 == 1) {
            return "last week";
        }
        if (j13 < 4) {
            return "" + j13 + " weeks ago";
        }
        if (j14 == 1) {
            return "last month";
        }
        if (j14 < 12) {
            return "" + j14 + " months ago";
        }
        if (j15 == 1) {
            return "last year";
        }
        return "" + j15 + " years ago";
    }

    public static Date c(Date date) {
        if (date != null) {
            return (Date) date.clone();
        }
        return null;
    }

    public static int d(String start, String end) {
        return (int) TimeUnit.DAYS.convert(f(k(end)).getTime() - f(k(start)).getTime(), TimeUnit.MILLISECONDS);
    }

    public static int e(String checkDate) {
        return d(m(), checkDate);
    }

    public static Date f(String date) {
        if (date != null && !date.isEmpty()) {
            try {
                return new SimpleDateFormat(f72115a, Locale.US).parse(date);
            } catch (ParseException unused) {
            }
        }
        return null;
    }

    public static Date g(Timestamp ts) {
        if (ts == null) {
            return null;
        }
        return new Date(ts.getTime());
    }

    public static Date h(Date date) {
        return new Date(date.getTime() + 86400000);
    }

    public static Date i(Date date) {
        return new Date(date.getTime() - 86400000);
    }

    public static String j(Date date) {
        if (date != null) {
            return date.toInstant().atZone(ZoneId.of("UTC")).format(DateTimeFormatter.ofPattern(f72115a));
        }
        throw new IllegalArgumentException("A data n\u00e3o pode ser nula!");
    }

    public static String k(String currentDate) {
        return C(f("00:00:00 " + currentDate.substring(9)));
    }

    public static String l(String currentDate) {
        return currentDate.substring(12);
    }

    public static String m() {
        return C(Calendar.getInstance().getTime());
    }

    public static String n(int offsetDays) {
        return new SimpleDateFormat(f72115a, Locale.US).format(Calendar.getInstance().getTime().toInstant().plus(offsetDays, (TemporalUnit) ChronoUnit.DAYS));
    }

    @Nullable
    public static Date o() {
        try {
            return new SimpleDateFormat("dd/MM/yyyy HH:mm:ss", Locale.US).parse(Nc.d.j(1, 30) + "/" + Nc.d.j(1, 12) + "/" + Nc.d.j(WindowManager.LayoutParams.TYPE_SYSTEM_ERROR, 2022) + " " + Nc.d.j(1, 24) + b3.s.f32937c + Nc.d.j(1, 60) + b3.s.f32937c + Nc.d.j(1, 60));
        } catch (Exception e10) {
            System.out.println(e10);
            return null;
        }
    }

    public static String p() {
        return "00:00:00 " + C(Calendar.getInstance().getTime()).substring(9);
    }

    public static String q(String currentDate) {
        return C(h(f("00:00:00 " + currentDate.substring(9))));
    }

    public static String r(String currentDate) {
        return C(i(f("00:00:00 " + currentDate.substring(9))));
    }

    public static int s(String start, String end) {
        return (int) TimeUnit.HOURS.convert(f(end).getTime() - f(start).getTime(), TimeUnit.MILLISECONDS);
    }

    public static int t(String checkDate) {
        return s(m(), checkDate);
    }

    public static boolean u(String date) {
        try {
            return new SimpleDateFormat(f72115a, Locale.US).parse(date).after(new Date());
        } catch (ParseException e10) {
            e10.printStackTrace();
            return false;
        }
    }

    public static boolean v(String date, String compareTo) {
        try {
            Locale locale = Locale.US;
            return new SimpleDateFormat(f72115a, locale).parse(date).after(new SimpleDateFormat(f72115a, locale).parse(compareTo));
        } catch (ParseException e10) {
            e10.printStackTrace();
            return false;
        }
    }

    public static boolean w(String d12, String d22) {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("dd-MM-yyyy", Locale.US);
        try {
            return simpleDateFormat.parse(d12.substring(9)).after(simpleDateFormat.parse(d22.substring(9)));
        } catch (ParseException e10) {
            e10.printStackTrace();
            return false;
        }
    }

    public static boolean x(String checkDate) {
        return k(checkDate).equals(p());
    }

    public static boolean y(String checkDate) {
        return q(checkDate).equals(p());
    }

    public static String z(String dateToOffset, int offsetDays) {
        return new SimpleDateFormat(f72115a, Locale.US).format(f(dateToOffset).toInstant().plus(offsetDays, (TemporalUnit) ChronoUnit.DAYS));
    }
}
