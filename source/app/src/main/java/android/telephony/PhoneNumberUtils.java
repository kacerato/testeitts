package android.telephony;

import android.content.Context;
import android.content.Intent;
import android.text.Editable;
import android.text.Spannable;
import android.text.style.TtsSpan;
import java.util.Locale;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/telephony/PhoneNumberUtils.class
 */
public class PhoneNumberUtils {
    public static final int FORMAT_JAPAN = 2;
    public static final int FORMAT_NANP = 1;
    public static final int FORMAT_UNKNOWN = 0;
    public static final char PAUSE = ',';
    public static final int TOA_International = 145;
    public static final int TOA_Unknown = 129;
    public static final char WAIT = ';';
    public static final char WILD = 'N';

    public PhoneNumberUtils() {
        throw new RuntimeException("Stub!");
    }

    public static boolean isISODigit(char c10) {
        throw new RuntimeException("Stub!");
    }

    public static final boolean is12Key(char c10) {
        throw new RuntimeException("Stub!");
    }

    public static final boolean isDialable(char c10) {
        throw new RuntimeException("Stub!");
    }

    public static final boolean isReallyDialable(char c10) {
        throw new RuntimeException("Stub!");
    }

    public static final boolean isNonSeparator(char c10) {
        throw new RuntimeException("Stub!");
    }

    public static final boolean isStartsPostDial(char c10) {
        throw new RuntimeException("Stub!");
    }

    public static String getNumberFromIntent(Intent intent, Context context) {
        throw new RuntimeException("Stub!");
    }

    public static String extractNetworkPortion(String phoneNumber) {
        throw new RuntimeException("Stub!");
    }

    public static String stripSeparators(String phoneNumber) {
        throw new RuntimeException("Stub!");
    }

    public static String extractPostDialPortion(String phoneNumber) {
        throw new RuntimeException("Stub!");
    }

    public static boolean compare(String a10, String b10) {
        throw new RuntimeException("Stub!");
    }

    public static boolean compare(Context context, String a10, String b10) {
        throw new RuntimeException("Stub!");
    }

    public static String toCallerIDMinMatch(String phoneNumber) {
        throw new RuntimeException("Stub!");
    }

    public static String getStrippedReversed(String phoneNumber) {
        throw new RuntimeException("Stub!");
    }

    public static String stringFromStringAndTOA(String s10, int TOA) {
        throw new RuntimeException("Stub!");
    }

    public static int toaFromString(String s10) {
        throw new RuntimeException("Stub!");
    }

    public static String calledPartyBCDToString(byte[] bytes, int offset, int length) {
        throw new RuntimeException("Stub!");
    }

    public static String calledPartyBCDFragmentToString(byte[] bytes, int offset, int length) {
        throw new RuntimeException("Stub!");
    }

    public static boolean isWellFormedSmsAddress(String address) {
        throw new RuntimeException("Stub!");
    }

    public static boolean isGlobalPhoneNumber(String phoneNumber) {
        throw new RuntimeException("Stub!");
    }

    public static byte[] networkPortionToCalledPartyBCD(String s10) {
        throw new RuntimeException("Stub!");
    }

    public static byte[] networkPortionToCalledPartyBCDWithLength(String s10) {
        throw new RuntimeException("Stub!");
    }

    public static byte[] numberToCalledPartyBCD(String number) {
        throw new RuntimeException("Stub!");
    }

    @Deprecated
    public static String formatNumber(String source) {
        throw new RuntimeException("Stub!");
    }

    @Deprecated
    public static int getFormatTypeForLocale(Locale locale) {
        throw new RuntimeException("Stub!");
    }

    @Deprecated
    public static void formatNumber(Editable text, int defaultFormattingType) {
        throw new RuntimeException("Stub!");
    }

    @Deprecated
    public static void formatNanpNumber(Editable text) {
        throw new RuntimeException("Stub!");
    }

    @Deprecated
    public static void formatJapaneseNumber(Editable text) {
        throw new RuntimeException("Stub!");
    }

    public static String formatNumberToE164(String phoneNumber, String defaultCountryIso) {
        throw new RuntimeException("Stub!");
    }

    public static String formatNumberToRFC3966(String phoneNumber, String defaultCountryIso) {
        throw new RuntimeException("Stub!");
    }

    public static String formatNumber(String phoneNumber, String defaultCountryIso) {
        throw new RuntimeException("Stub!");
    }

    public static String formatNumber(String phoneNumber, String phoneNumberE164, String defaultCountryIso) {
        throw new RuntimeException("Stub!");
    }

    public static String normalizeNumber(String phoneNumber) {
        throw new RuntimeException("Stub!");
    }

    public static String replaceUnicodeDigits(String number) {
        throw new RuntimeException("Stub!");
    }

    public static boolean isEmergencyNumber(String number) {
        throw new RuntimeException("Stub!");
    }

    public static boolean isLocalEmergencyNumber(Context context, String number) {
        throw new RuntimeException("Stub!");
    }

    public static boolean isVoiceMailNumber(String number) {
        throw new RuntimeException("Stub!");
    }

    public static String convertKeypadLettersToDigits(String input) {
        throw new RuntimeException("Stub!");
    }

    public static CharSequence createTtsSpannable(CharSequence phoneNumber) {
        throw new RuntimeException("Stub!");
    }

    public static void addTtsSpan(Spannable s10, int start, int endExclusive) {
        throw new RuntimeException("Stub!");
    }

    public static TtsSpan createTtsSpan(String phoneNumberString) {
        throw new RuntimeException("Stub!");
    }
}
