package Li;

import Bi.InterfaceC2374f;
import Bi.InterfaceC2379k;
import Xi.C3360o0;
import com.google.common.collect.C12510d2;
import com.google.protobuf.Utf8;
import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.OutputLengthException;
import org.eclipse.jdt.internal.compiler.codegen.Opcodes;

public class C2798x implements InterfaceC2374f {

    public static final int f14324h = 10;

    public static final int f14325i = 14;

    public static final int f14326j = 18;

    public static final byte[] f14327k = {Opcodes.OPC_jsr, Opcodes.OPC_fstore_0, Opcodes.OPC_swap, 6, 107, Opcodes.OPC_lneg, Opcodes.OPC_idiv, Opcodes.OPC_dup, 113, -33, Opcodes.OPC_i2d, Opcodes.OPC_fcmpl, 23, -16, -40, 9, Opcodes.OPC_ldiv, -13, 29, -53, Opcodes.OPC_jsr_w, Opcodes.OPC_astore_2, Opcodes.OPC_aload_2, Opcodes.OPC_dreturn, 121, -32, Opcodes.OPC_dcmpl, -3, 111, Opcodes.OPC_astore_0, Opcodes.OPC_fstore_2, Opcodes.OPC_dstore, 62, -35, Opcodes.OPC_if_icmpgt, Opcodes.OPC_iastore, Opcodes.OPC_getfield, Opcodes.OPC_invokevirtual, Opcodes.OPC_ifne, 14, 31, Opcodes.OPC_athrow, 21, Ti.t.f25309s, Opcodes.OPC_dstore_2, -46, Opcodes.OPC_i2s, Opcodes.OPC_ifnull, Opcodes.OPC_i2c, Opcodes.OPC_frem, Opcodes.OPC_ifle, Opcodes.OPC_ladd, -47, Opcodes.OPC_dadd, -6, -18, -12, 25, -43, Opcodes.OPC_lreturn, Opcodes.OPC_pop2, Opcodes.OPC_if_icmple, Opcodes.OPC_new, Opcodes.OPC_if_icmplt, -36, -14, Opcodes.OPC_lxor, Opcodes.OPC_lstore, Opcodes.OPC_lstore_3, -28, 122, 50, Opcodes.OPC_ifge, -52, Opcodes.OPC_lookupswitch, Opcodes.OPC_dstore_3, Opcodes.OPC_d2l, 110, 4, Opcodes.OPC_dload_1, Opcodes.OPC_iaload, -25, -30, 90, Opcodes.OPC_fcmpg, 22, Opcodes.OPC_fload_1, Opcodes.OPC_aload_1, Opcodes.OPC_monitorenter, 101, 102, 15, -68, Opcodes.OPC_ret, 71, Opcodes.OPC_lstore_2, 52, 72, -4, Opcodes.OPC_invokespecial, 106, Opcodes.OPC_l2i, Opcodes.OPC_if_acmpeq, Opcodes.OPC_aastore, Opcodes.OPC_i2f, -7, 91, -37, Opcodes.OPC_fstore, 123, Opcodes.OPC_monitorexit, 30, 34, 51, Opcodes.OPC_fload_2, 40, 54, Opcodes.OPC_ifnonnull, Opcodes.OPC_getstatic, Opcodes.OPC_istore_0, Opcodes.OPC_d2i, Opcodes.OPC_dneg, Opcodes.OPC_invokedynamic, -11, 20, Opcodes.OPC_if_icmpeq, 8, Opcodes.OPC_castore, Opcodes.OPC_iflt, Opcodes.OPC_astore_1, -2, 96, 92, -38, 24, 70, -51, Opcodes.OPC_lushr, 33, Opcodes.OPC_areturn, Opcodes.OPC_lstore_0, 27, Opcodes.OPC_l2f, -1, -21, Opcodes.OPC_iinc, 105, Opcodes.OPC_astore, Opcodes.OPC_ifgt, -41, -45, 112, Opcodes.OPC_dsub, 64, Opcodes.OPC_putfield, -34, Opcodes.OPC_dup2_x1, 48, Opcodes.OPC_i2b, Opcodes.OPC_return, 120, 17, 1, -27, 0, Opcodes.OPC_imul, Opcodes.OPC_dcmpg, Opcodes.OPC_if_icmpne, Opcodes.OPC_multianewarray, 2, Opcodes.OPC_if_acmpne, Opcodes.OPC_ineg, Opcodes.OPC_aload_3, 11, Opcodes.OPC_if_icmpge, Opcodes.OPC_fneg, Opcodes.OPC_putstatic, Opcodes.OPC_arraylength, -50, Opcodes.OPC_anewarray, Opcodes.OPC_freturn, -23, Opcodes.OPC_l2d, Opcodes.OPC_daload, 28, -20, -15, Opcodes.OPC_ifeq, Opcodes.OPC_lcmp, Opcodes.OPC_tableswitch, -10, 38, Opcodes.OPC_laload, -17, -24, Opcodes.OPC_f2l, Opcodes.OPC_saload, 3, -44, Byte.MAX_VALUE, -5, 5, Opcodes.OPC_instanceof, Opcodes.OPC_dup2_x2, Opcodes.OPC_d2f, 32, 61, Opcodes.OPC_ixor, -9, -22, 10, 13, Opcodes.OPC_iand, -8, 80, 26, Opcodes.OPC_wide, 7, Opcodes.OPC_pop, Opcodes.OPC_invokestatic, 60, Opcodes.OPC_fadd, -29, Opcodes.OPC_goto_w, Opcodes.OPC_ireturn, Opcodes.OPC_dastore, 100, 16, -48, -39, 19, 12, 18, 41, Opcodes.OPC_fastore, Opcodes.OPC_invokeinterface, -49, -42, Opcodes.OPC_drem, Opcodes.OPC_f2d, Opcodes.OPC_lor, Opcodes.OPC_bastore, Opcodes.OPC_checkcast, -19, Opcodes.OPC_astore_3, Opcodes.OPC_fstore_1, Opcodes.OPC_goto, 42, Opcodes.OPC_i2l, Opcodes.OPC_fload_3, -26, -54, Opcodes.OPC_iushr, Opcodes.OPC_f2i, Opcodes.OPC_sastore, Byte.MIN_VALUE};

    public static final byte[] f14328l = {-50, Opcodes.OPC_new, -21, Opcodes.OPC_i2c, -22, -53, 19, Opcodes.OPC_instanceof, -23, Opcodes.OPC_astore, -42, Opcodes.OPC_getstatic, -46, Opcodes.OPC_d2f, 23, -8, Opcodes.OPC_lstore_3, 21, Opcodes.OPC_sastore, Opcodes.OPC_getfield, 101, 28, Opcodes.OPC_l2i, Opcodes.OPC_fstore_0, Opcodes.OPC_multianewarray, 92, 54, Opcodes.OPC_invokedynamic, -11, Opcodes.OPC_pop, Opcodes.OPC_dsub, Opcodes.OPC_f2d, Opcodes.OPC_daload, -10, 100, Opcodes.OPC_pop2, Opcodes.OPC_ifle, -12, 34, Opcodes.OPC_tableswitch, Opcodes.OPC_lneg, 15, 2, Opcodes.OPC_return, -33, Opcodes.OPC_ldiv, Opcodes.OPC_drem, Opcodes.OPC_astore_2, Opcodes.OPC_iushr, 38, Opcodes.OPC_iaload, -9, 8, Opcodes.OPC_dup2_x1, Opcodes.OPC_fstore_1, 62, Opcodes.OPC_if_icmpeq, 20, Opcodes.OPC_goto_w, Opcodes.OPC_freturn, Opcodes.OPC_bastore, 16, -40, -68, 26, 107, 105, -13, Opcodes.OPC_anewarray, 51, Opcodes.OPC_lookupswitch, -6, -47, Opcodes.OPC_iflt, Opcodes.OPC_imul, Opcodes.OPC_astore_3, 22, Opcodes.OPC_fcmpl, Opcodes.OPC_i2b, -18, Opcodes.OPC_astore_1, Opcodes.OPC_dadd, Opcodes.OPC_d2i, 91, -52, 60, 25, Opcodes.OPC_if_icmplt, Opcodes.OPC_lor, Opcodes.OPC_dstore_2, 123, -39, 111, Opcodes.OPC_lstore, 96, -54, -25, Opcodes.OPC_aload_1, 72, -3, Opcodes.OPC_fcmpg, Opcodes.OPC_fstore_2, -4, Opcodes.OPC_lstore_2, 18, 13, 121, -27, Opcodes.OPC_l2f, Opcodes.OPC_f2l, -29, 32, 48, -36, Opcodes.OPC_invokespecial, Opcodes.OPC_idiv, Opcodes.OPC_dstore_3, Opcodes.OPC_putfield, Opcodes.OPC_lstore_0, Opcodes.OPC_dcmpl, -44, Opcodes.OPC_fadd, Opcodes.OPC_aload_3, 6, Opcodes.OPC_if_icmple, Opcodes.OPC_if_acmpeq, Opcodes.OPC_lxor, Opcodes.OPC_swap, 42, -38, Opcodes.OPC_jsr_w, 0, Opcodes.OPC_iand, Opcodes.OPC_if_icmpge, Opcodes.OPC_castore, Opcodes.OPC_athrow, 17, -43, Opcodes.OPC_ifge, -49, 14, 10, 61, Opcodes.OPC_fastore, Opcodes.OPC_lushr, Opcodes.OPC_i2s, 27, -2, Opcodes.OPC_wide, 71, 9, Opcodes.OPC_i2f, 11, Opcodes.OPC_d2l, Opcodes.OPC_ifgt, 106, 7, Opcodes.OPC_invokeinterface, Opcodes.OPC_areturn, Opcodes.OPC_dcmpg, 24, 50, 113, Opcodes.OPC_astore_0, -17, Opcodes.OPC_istore_0, 112, Opcodes.OPC_if_icmpne, -28, 64, -1, Opcodes.OPC_monitorexit, Opcodes.OPC_ret, -26, 120, -7, Opcodes.OPC_f2i, 70, Byte.MIN_VALUE, 30, Opcodes.OPC_fstore, Ti.t.f25309s, Opcodes.OPC_invokestatic, Opcodes.OPC_jsr, -32, 12, Opcodes.OPC_fload_1, Opcodes.OPC_fneg, 29, Opcodes.OPC_fload_3, Opcodes.OPC_fload_2, 5, -15, 110, Opcodes.OPC_lcmp, 40, Opcodes.OPC_ifne, Opcodes.OPC_iinc, -24, Opcodes.OPC_if_icmpgt, Opcodes.OPC_iastore, Opcodes.OPC_dneg, -45, Opcodes.OPC_i2l, -30, Opcodes.OPC_dastore, -14, Opcodes.OPC_ixor, 80, 122, Opcodes.OPC_laload, Opcodes.OPC_ineg, Opcodes.OPC_aastore, Opcodes.OPC_putstatic, Opcodes.OPC_ladd, Opcodes.OPC_dreturn, Opcodes.OPC_dstore, Opcodes.OPC_saload, -34, -51, 31, Opcodes.OPC_ifeq, Opcodes.OPC_ireturn, Opcodes.OPC_lreturn, Opcodes.OPC_frem, Opcodes.OPC_aload_2, -35, -48, Opcodes.OPC_i2d, Opcodes.OPC_arraylength, Opcodes.OPC_dup2_x2, Opcodes.OPC_if_acmpne, -20, 4, Opcodes.OPC_ifnull, 3, 52, -5, -37, Opcodes.OPC_dup, Opcodes.OPC_invokevirtual, Opcodes.OPC_monitorenter, 1, -16, 90, -19, Opcodes.OPC_goto, 102, 33, Byte.MAX_VALUE, Opcodes.OPC_l2d, Opcodes.OPC_dload_1, Opcodes.OPC_ifnonnull, Opcodes.OPC_checkcast, 41, -41};

    public static final byte[] f14329m = {Opcodes.OPC_i2s, -39, Opcodes.OPC_ifne, Opcodes.OPC_putfield, Opcodes.OPC_dcmpg, 34, Opcodes.OPC_fstore_2, -4, Opcodes.OPC_invokedynamic, 106, -33, 2, Opcodes.OPC_if_icmpeq, -36, Opcodes.OPC_fastore, Opcodes.OPC_dup, Opcodes.OPC_dstore_3, 23, Opcodes.OPC_aload_1, Opcodes.OPC_monitorenter, Opcodes.OPC_lcmp, -12, Opcodes.OPC_new, Opcodes.OPC_if_icmpgt, Opcodes.OPC_fadd, -28, 113, -44, -51, 112, 22, Ti.t.f25309s, Opcodes.OPC_dstore_2, 60, Opcodes.OPC_checkcast, -40, 92, Opcodes.OPC_iflt, Opcodes.OPC_lreturn, Opcodes.OPC_i2l, Opcodes.OPC_aastore, Opcodes.OPC_if_icmplt, 122, Opcodes.OPC_goto_w, Opcodes.OPC_aload_3, -32, -47, Opcodes.OPC_frem, Opcodes.OPC_if_acmpne, Opcodes.OPC_aload_2, Opcodes.OPC_wide, -29, Opcodes.OPC_fneg, 120, Opcodes.OPC_invokespecial, Opcodes.OPC_getfield, 9, Opcodes.OPC_istore_0, 14, Opcodes.OPC_lstore_2, Opcodes.OPC_astore_1, -34, Opcodes.OPC_getstatic, Opcodes.OPC_d2f, Opcodes.OPC_fload_3, Opcodes.OPC_if_acmpeq, -41, 3, 17, 0, Opcodes.OPC_monitorexit, Opcodes.OPC_iaload, Opcodes.OPC_i2c, -17, Opcodes.OPC_astore_3, 18, Opcodes.OPC_ifgt, Opcodes.OPC_lushr, -53, Opcodes.OPC_saload, 16, -43, Opcodes.OPC_iastore, Opcodes.OPC_ifle, Opcodes.OPC_astore_2, Opcodes.OPC_ret, Opcodes.OPC_castore, Opcodes.OPC_ifnull, -48, 123, 24, Opcodes.OPC_dcmpl, -45, 54, -26, 72, Opcodes.OPC_sastore, Opcodes.OPC_lor, Opcodes.OPC_d2l, Opcodes.OPC_dneg, -52, Opcodes.OPC_ifge, Opcodes.OPC_invokeinterface, -30, Opcodes.OPC_ireturn, Opcodes.OPC_invokestatic, Opcodes.OPC_laload, 21, Opcodes.OPC_if_icmple, Opcodes.OPC_iushr, -38, Opcodes.OPC_fstore, 30, 11, 5, -42, 20, 110, Opcodes.OPC_idiv, Opcodes.OPC_iand, 102, -3, Opcodes.OPC_return, -27, 96, Opcodes.OPC_dreturn, Opcodes.OPC_dup2_x2, 51, Opcodes.OPC_i2d, Opcodes.OPC_jsr_w, -16, Opcodes.OPC_dup2_x1, Opcodes.OPC_ldiv, Opcodes.OPC_lstore_0, Opcodes.OPC_l2i, Opcodes.OPC_f2d, Opcodes.OPC_ifnonnull, -9, 29, -23, -20, -19, Byte.MIN_VALUE, 41, Opcodes.OPC_dload_1, -49, Opcodes.OPC_ifeq, Opcodes.OPC_jsr, 80, 15, Opcodes.OPC_lstore, Opcodes.OPC_fload_2, 40, 48, Opcodes.OPC_fcmpl, -46, 62, 91, 64, Opcodes.OPC_lxor, Opcodes.OPC_putstatic, 105, Opcodes.OPC_pop, 31, 7, 28, Opcodes.OPC_l2d, -68, 32, -21, -50, Opcodes.OPC_d2i, Opcodes.OPC_lookupswitch, -18, Opcodes.OPC_daload, Opcodes.OPC_if_icmpge, Opcodes.OPC_drem, -7, -54, Opcodes.OPC_astore, 26, -5, 13, Opcodes.OPC_instanceof, -2, -6, -14, 111, Opcodes.OPC_anewarray, Opcodes.OPC_fcmpg, -35, Opcodes.OPC_fstore_0, Opcodes.OPC_dastore, Opcodes.OPC_invokevirtual, 8, -13, Opcodes.OPC_freturn, Opcodes.OPC_arraylength, 25, Opcodes.OPC_l2f, 50, 38, Opcodes.OPC_areturn, -22, Opcodes.OPC_astore_0, 100, Opcodes.OPC_iinc, Opcodes.OPC_ixor, 107, -11, 121, Opcodes.OPC_athrow, 1, Opcodes.OPC_swap, Opcodes.OPC_lneg, Opcodes.OPC_dadd, 27, Opcodes.OPC_fload_1, 61, Opcodes.OPC_imul, 42, 101, -24, Opcodes.OPC_i2b, -10, -1, 19, Opcodes.OPC_pop2, -15, 71, 10, Byte.MAX_VALUE, Opcodes.OPC_multianewarray, Opcodes.OPC_goto, -25, Opcodes.OPC_ladd, 90, 6, 70, Opcodes.OPC_fstore_1, Opcodes.OPC_lstore_3, 4, Opcodes.OPC_if_icmpne, -37, Opcodes.OPC_dstore, Opcodes.OPC_i2f, Opcodes.OPC_bastore, Opcodes.OPC_tableswitch, Opcodes.OPC_f2l, 52, 33, Opcodes.OPC_f2i, -8, 12, Opcodes.OPC_ineg, Opcodes.OPC_dsub};

    public static final byte[] f14330n = {Opcodes.OPC_imul, Opcodes.OPC_f2d, -54, Opcodes.OPC_astore_2, Opcodes.OPC_drem, Opcodes.OPC_astore_0, Opcodes.OPC_astore_3, 42, -44, Opcodes.OPC_dastore, 38, Opcodes.OPC_putstatic, Opcodes.OPC_bastore, 30, 25, 31, 34, 3, 70, 61, Opcodes.OPC_aload_3, Opcodes.OPC_dstore_3, Opcodes.OPC_aastore, Opcodes.OPC_lxor, 19, Opcodes.OPC_l2d, Opcodes.OPC_invokespecial, -43, Opcodes.OPC_fload_3, 121, -11, Opcodes.OPC_anewarray, Opcodes.OPC_pop2, Opcodes.OPC_laload, 13, 2, -19, Opcodes.OPC_fastore, Opcodes.OPC_ifle, 17, -14, 62, Opcodes.OPC_castore, Opcodes.OPC_dup2_x2, -47, 22, 60, 102, 112, Opcodes.OPC_dup2_x1, -13, Opcodes.OPC_fstore_2, 64, -52, -24, Opcodes.OPC_lcmp, Opcodes.OPC_sastore, 8, -50, 26, Opcodes.OPC_astore, -46, Ti.t.f25309s, -33, Opcodes.OPC_putfield, Opcodes.OPC_fstore, 110, 14, -27, -12, -7, Opcodes.OPC_i2f, -23, Opcodes.OPC_iastore, -42, Opcodes.OPC_i2l, Opcodes.OPC_fload_1, -49, 50, Opcodes.OPC_ifeq, Opcodes.OPC_daload, 20, Opcodes.OPC_freturn, -18, Opcodes.OPC_goto_w, 72, -45, 48, Opcodes.OPC_if_icmplt, Opcodes.OPC_i2c, Opcodes.OPC_lstore_2, Opcodes.OPC_return, 24, Opcodes.OPC_wide, Opcodes.OPC_aload_2, 113, Opcodes.OPC_frem, Opcodes.OPC_fstore_1, 21, -3, Opcodes.OPC_lstore, Opcodes.OPC_arraylength, Opcodes.OPC_swap, Opcodes.OPC_tableswitch, Opcodes.OPC_iflt, Opcodes.OPC_l2i, -40, Opcodes.OPC_lookupswitch, Opcodes.OPC_l2f, Opcodes.OPC_ifge, -6, 96, -22, -68, Opcodes.OPC_fadd, 12, Opcodes.OPC_fload_2, Opcodes.OPC_if_acmpne, Opcodes.OPC_jsr, -20, Opcodes.OPC_dsub, 32, -37, Opcodes.OPC_iushr, 40, -35, Opcodes.OPC_ireturn, 91, 52, Opcodes.OPC_iand, 16, -15, 123, Opcodes.OPC_d2l, Opcodes.OPC_dadd, Opcodes.OPC_if_icmpne, 5, Opcodes.OPC_ifne, Opcodes.OPC_fstore_0, Opcodes.OPC_dneg, 33, Opcodes.OPC_athrow, Opcodes.OPC_dload_1, 9, Opcodes.OPC_monitorexit, Opcodes.OPC_if_icmpeq, Opcodes.OPC_invokevirtual, -41, 41, Opcodes.OPC_monitorenter, -21, Opcodes.OPC_checkcast, Opcodes.OPC_if_icmple, Opcodes.OPC_f2i, Opcodes.OPC_f2l, 29, -5, -1, Opcodes.OPC_instanceof, Opcodes.OPC_getstatic, Opcodes.OPC_dcmpl, Opcodes.OPC_iaload, -8, 101, -10, Opcodes.OPC_lneg, 7, 4, Opcodes.OPC_dstore_2, 51, -28, -39, Opcodes.OPC_invokeinterface, -48, Opcodes.OPC_lstore_3, Opcodes.OPC_ifnonnull, Opcodes.OPC_idiv, Opcodes.OPC_d2f, 0, Opcodes.OPC_d2i, 111, 80, 1, Opcodes.OPC_multianewarray, -38, 71, Opcodes.OPC_lstore_0, -51, 105, Opcodes.OPC_if_icmpge, -30, 122, Opcodes.OPC_goto, Opcodes.OPC_ifnull, Opcodes.OPC_i2s, 15, 10, 6, -26, Opcodes.OPC_aload_1, Opcodes.OPC_fcmpg, Opcodes.OPC_if_icmpgt, 28, Opcodes.OPC_dreturn, 106, 18, Opcodes.OPC_iinc, Opcodes.OPC_dstore, -25, Opcodes.OPC_areturn, Opcodes.OPC_ixor, -9, -2, Opcodes.OPC_ifgt, Opcodes.OPC_i2d, 92, Opcodes.OPC_lor, Opcodes.OPC_saload, -34, Opcodes.OPC_getfield, Opcodes.OPC_if_acmpeq, -4, Byte.MIN_VALUE, -17, -53, Opcodes.OPC_new, 107, Opcodes.OPC_fneg, Opcodes.OPC_invokedynamic, 90, Opcodes.OPC_lushr, 120, 11, Opcodes.OPC_fcmpl, -29, Opcodes.OPC_lreturn, Opcodes.OPC_ineg, Opcodes.OPC_dcmpg, Opcodes.OPC_istore_0, 54, 100, Opcodes.OPC_ldiv, -36, -16, Opcodes.OPC_dup, Opcodes.OPC_ret, Opcodes.OPC_astore_1, 23, Byte.MAX_VALUE, Opcodes.OPC_i2b, Opcodes.OPC_invokestatic, Opcodes.OPC_jsr_w, Opcodes.OPC_pop, 27, -32, Opcodes.OPC_ladd};

    public static final byte[] f14331o = {Opcodes.OPC_if_icmple, Opcodes.OPC_if_icmpge, Opcodes.OPC_ret, Opcodes.OPC_multianewarray, Opcodes.OPC_astore_3, Opcodes.OPC_jsr_w, 3, -39, Opcodes.OPC_iand, 15, -46, Opcodes.OPC_lreturn, -25, -45, Opcodes.OPC_dload_1, 91, -29, Opcodes.OPC_if_icmplt, -24, -26, Opcodes.OPC_iushr, 42, Opcodes.OPC_castore, 12, Opcodes.OPC_i2f, Opcodes.OPC_dstore, -41, Opcodes.OPC_f2d, Opcodes.OPC_invokestatic, 18, 111, 40, -51, Opcodes.OPC_l2d, 112, Opcodes.OPC_sastore, Opcodes.OPC_frem, -7, Opcodes.OPC_athrow, Opcodes.OPC_iastore, Opcodes.OPC_drem, -23, -9, Opcodes.OPC_pop, 22, Opcodes.OPC_ireturn, 80, Opcodes.OPC_checkcast, Opcodes.OPC_ifgt, Opcodes.OPC_invokespecial, 71, 113, 96, Opcodes.OPC_wide, Opcodes.OPC_ineg, Opcodes.OPC_fstore_0, Opcodes.OPC_idiv, 31, Opcodes.OPC_i2s, Opcodes.OPC_dneg, -36, -50, 32, Opcodes.OPC_f2l, Opcodes.OPC_ifeq, Opcodes.OPC_swap, Opcodes.OPC_fstore_1, 1, -11, 30, Opcodes.OPC_i2d, Opcodes.OPC_dup2_x2, Opcodes.OPC_ladd, Opcodes.OPC_aload_2, Opcodes.OPC_astore_0, 29, Opcodes.OPC_lor, 21, -12, Opcodes.OPC_fload_1, -42, -22, Ti.t.f25309s, Opcodes.OPC_dsub, -15, Byte.MAX_VALUE, -2, -38, 60, 7, Opcodes.OPC_aastore, 106, Opcodes.OPC_iinc, Opcodes.OPC_ifge, -53, 2, Opcodes.OPC_lxor, 51, -35, Opcodes.OPC_saload, -30, Opcodes.OPC_dup, 90, Opcodes.OPC_dcmpg, Opcodes.OPC_if_acmpeq, Opcodes.OPC_i2c, 100, 4, 6, 16, Opcodes.OPC_astore_2, 28, Opcodes.OPC_dcmpl, 8, Opcodes.OPC_daload, -18, Opcodes.OPC_lookupswitch, 5, Opcodes.OPC_dreturn, 121, Opcodes.OPC_if_icmpne, 24, 70, Opcodes.OPC_ldiv, -4, Opcodes.OPC_l2f, -44, Opcodes.OPC_ifnonnull, -1, -16, -49, Opcodes.OPC_lstore_3, Opcodes.OPC_i2b, -8, Opcodes.OPC_imul, 10, 101, Opcodes.OPC_d2i, Opcodes.OPC_invokevirtual, -3, Opcodes.OPC_monitorexit, -17, 120, Opcodes.OPC_astore_1, -52, Opcodes.OPC_ifle, 48, Opcodes.OPC_iaload, -68, 11, Opcodes.OPC_bastore, 26, Opcodes.OPC_if_acmpne, Opcodes.OPC_new, 38, Byte.MIN_VALUE, 72, Opcodes.OPC_lcmp, 50, Opcodes.OPC_lushr, Opcodes.OPC_goto, Opcodes.OPC_lstore_0, Opcodes.OPC_freturn, 34, 61, 102, Opcodes.OPC_tableswitch, -10, 0, Opcodes.OPC_dup2_x1, Opcodes.OPC_anewarray, Opcodes.OPC_dstore_3, -32, Opcodes.OPC_istore_0, Opcodes.OPC_getfield, 23, Opcodes.OPC_f2i, Opcodes.OPC_if_icmpeq, Opcodes.OPC_fneg, Opcodes.OPC_areturn, Opcodes.OPC_fload_2, Opcodes.OPC_ifne, Opcodes.OPC_fload_3, Opcodes.OPC_dadd, -37, -21, 122, 62, 92, Opcodes.OPC_putstatic, Opcodes.OPC_return, 41, -14, -54, Opcodes.OPC_pop2, 110, -40, Opcodes.OPC_jsr, Opcodes.OPC_laload, Opcodes.OPC_lneg, -33, 20, -5, 19, Opcodes.OPC_dstore_2, Opcodes.OPC_l2i, Opcodes.OPC_getstatic, -20, -28, 52, Opcodes.OPC_aload_3, Opcodes.OPC_fcmpg, Opcodes.OPC_ifnull, Opcodes.OPC_astore, -19, Opcodes.OPC_fcmpl, 14, -27, Opcodes.OPC_i2l, 107, 64, 33, Opcodes.OPC_iflt, 9, 25, Opcodes.OPC_aload_1, Opcodes.OPC_dastore, -34, Opcodes.OPC_fstore_2, Opcodes.OPC_if_icmpgt, -6, Opcodes.OPC_fastore, Opcodes.OPC_monitorenter, Opcodes.OPC_putfield, -47, Opcodes.OPC_d2f, Opcodes.OPC_invokeinterface, -13, Opcodes.OPC_lstore, Opcodes.OPC_instanceof, 13, Opcodes.OPC_invokedynamic, Opcodes.OPC_lstore_2, 17, Opcodes.OPC_fstore, 123, Opcodes.OPC_arraylength, -48, -43, 105, 54, Opcodes.OPC_goto_w, Opcodes.OPC_fadd, 27, Opcodes.OPC_ixor, Opcodes.OPC_d2l};

    public static final byte[] f14332p = {Opcodes.OPC_lxor, -14, 42, -21, -23, Opcodes.OPC_athrow, 123, Opcodes.OPC_ifge, 52, Opcodes.OPC_fcmpg, Opcodes.OPC_f2d, Opcodes.OPC_dcmpg, Opcodes.OPC_invokeinterface, 105, Opcodes.OPC_f2l, 41, 61, Opcodes.OPC_l2i, Opcodes.OPC_imul, 6, Opcodes.OPC_dstore, 17, Opcodes.OPC_astore_1, 14, Opcodes.OPC_if_icmpne, Opcodes.OPC_sastore, 64, Opcodes.OPC_i2c, 21, -68, Opcodes.OPC_putstatic, -36, 111, -8, 38, Opcodes.OPC_invokedynamic, Opcodes.OPC_arraylength, Opcodes.OPC_anewarray, Opcodes.OPC_daload, -5, Opcodes.OPC_monitorexit, -2, Byte.MIN_VALUE, Opcodes.OPC_ladd, Ti.t.f25309s, 122, 50, -46, 112, 32, Opcodes.OPC_if_icmplt, Opcodes.OPC_fstore_2, -20, -39, 26, Opcodes.OPC_dup2_x1, Opcodes.OPC_getfield, -40, 9, Opcodes.OPC_if_acmpeq, Opcodes.OPC_castore, Opcodes.OPC_d2i, Opcodes.OPC_lstore, Opcodes.OPC_fneg, Opcodes.OPC_ret, Opcodes.OPC_dsub, 16, 23, 54, 101, Opcodes.OPC_return, Opcodes.OPC_fcmpl, Opcodes.OPC_fadd, Opcodes.OPC_dup, Opcodes.OPC_ineg, Opcodes.OPC_if_icmpgt, 80, Opcodes.OPC_laload, Opcodes.OPC_astore_0, Opcodes.OPC_goto_w, -48, Opcodes.OPC_d2l, -51, -44, 60, Opcodes.OPC_i2f, 18, 29, Opcodes.OPC_fload_1, -17, -12, Opcodes.OPC_aastore, 25, Opcodes.OPC_saload, -26, Byte.MAX_VALUE, Opcodes.OPC_dup2_x2, -42, 121, Opcodes.OPC_fastore, 34, 20, -9, 30, Opcodes.OPC_dstore_3, Opcodes.OPC_lstore_3, Opcodes.OPC_iflt, Opcodes.OPC_lstore_2, Opcodes.OPC_drem, Opcodes.OPC_aload_3, Opcodes.OPC_instanceof, 92, Opcodes.OPC_if_acmpne, Opcodes.OPC_if_icmpge, -32, Opcodes.OPC_iaload, -45, 40, Opcodes.OPC_new, Opcodes.OPC_jsr_w, Opcodes.OPC_freturn, 106, -47, 90, 48, Opcodes.OPC_d2f, Opcodes.OPC_iinc, -7, Opcodes.OPC_getstatic, Opcodes.OPC_pop2, -49, Opcodes.OPC_iand, Opcodes.OPC_multianewarray, -53, Opcodes.OPC_dcmpl, -28, 22, Opcodes.OPC_idiv, -6, Opcodes.OPC_areturn, Opcodes.OPC_ldiv, 31, Opcodes.OPC_dastore, Opcodes.OPC_ifeq, 13, Opcodes.OPC_astore_3, 3, Opcodes.OPC_i2b, Opcodes.OPC_monitorenter, Opcodes.OPC_astore_2, 100, Opcodes.OPC_dneg, Opcodes.OPC_if_icmpeq, -35, Opcodes.OPC_wide, Opcodes.OPC_dstore_2, Opcodes.OPC_l2d, Opcodes.OPC_ifne, Opcodes.OPC_fload_2, Opcodes.OPC_fstore, Opcodes.OPC_goto, Opcodes.OPC_pop, Opcodes.OPC_i2l, Opcodes.OPC_ifnonnull, Opcodes.OPC_iushr, Opcodes.OPC_lushr, -25, -10, Opcodes.OPC_invokespecial, Opcodes.OPC_ireturn, Opcodes.OPC_dload_1, 70, -34, -33, Opcodes.OPC_istore_0, -41, Opcodes.OPC_ifle, Opcodes.OPC_aload_1, 11, -43, 19, Opcodes.OPC_lneg, -16, Opcodes.OPC_frem, Opcodes.OPC_invokevirtual, Opcodes.OPC_ifgt, 27, 1, Opcodes.OPC_lstore_0, Opcodes.OPC_fstore_1, -27, Opcodes.OPC_i2d, -3, 7, -15, Opcodes.OPC_lookupswitch, Opcodes.OPC_lcmp, 24, -22, -4, Opcodes.OPC_astore, Opcodes.OPC_ixor, Opcodes.OPC_swap, 5, Opcodes.OPC_bastore, -37, 0, Opcodes.OPC_f2i, -29, 72, 12, -54, 120, Opcodes.OPC_l2f, 10, -1, 62, 91, Opcodes.OPC_lor, -18, 113, -30, -38, Opcodes.OPC_aload_2, Opcodes.OPC_invokestatic, Opcodes.OPC_putfield, -52, 110, Opcodes.OPC_jsr, 107, Opcodes.OPC_lreturn, 96, Opcodes.OPC_ifnull, 8, 4, 2, -24, -11, Opcodes.OPC_iastore, Opcodes.OPC_if_icmple, -13, Opcodes.OPC_checkcast, -50, Opcodes.OPC_fstore_0, Opcodes.OPC_fload_3, 28, 33, 51, 15, Opcodes.OPC_dreturn, 71, -19, 102, Opcodes.OPC_dadd, Opcodes.OPC_i2s, Opcodes.OPC_tableswitch};

    public static final byte[] f14333q = {Opcodes.OPC_fstore_2, -44, 11, Opcodes.OPC_fstore_0, -15, Opcodes.OPC_frem, -19, Opcodes.OPC_if_icmple, Opcodes.OPC_monitorenter, Opcodes.OPC_fstore, -26, 113, -3, Opcodes.OPC_invokevirtual, Opcodes.OPC_astore, Opcodes.OPC_fcmpl, 80, Opcodes.OPC_fstore_1, Opcodes.OPC_astore_0, -30, Opcodes.OPC_ineg, 107, 30, 17, 90, Opcodes.OPC_ifnull, Opcodes.OPC_getfield, -40, Opcodes.OPC_if_acmpeq, Opcodes.OPC_l2d, 112, Opcodes.OPC_if_icmpgt, Opcodes.OPC_jsr, -6, 5, -39, Opcodes.OPC_dcmpl, 64, Opcodes.OPC_jsr_w, Opcodes.OPC_d2f, Opcodes.OPC_dcmpg, Opcodes.OPC_d2l, -36, 18, Opcodes.OPC_daload, Opcodes.OPC_aload_2, 71, 106, Opcodes.OPC_ifeq, Opcodes.OPC_freturn, Opcodes.OPC_goto_w, Byte.MAX_VALUE, -7, Opcodes.OPC_iastore, Opcodes.OPC_dup2_x1, Opcodes.OPC_fcmpg, 111, -12, Opcodes.OPC_putstatic, Opcodes.OPC_dstore, 33, -38, Opcodes.OPC_ifge, Opcodes.OPC_i2l, Opcodes.OPC_ifle, Opcodes.OPC_istore_0, -16, Opcodes.OPC_athrow, -17, 6, -18, -27, Opcodes.OPC_swap, 32, 16, -52, 60, Opcodes.OPC_bastore, Opcodes.OPC_dstore_3, Opcodes.OPC_dastore, Opcodes.OPC_lcmp, 14, Opcodes.OPC_checkcast, 40, -10, Opcodes.OPC_sastore, 96, Opcodes.OPC_if_icmpge, -29, 15, -20, Opcodes.OPC_ifgt, Opcodes.OPC_fload_2, Opcodes.OPC_lxor, Opcodes.OPC_iand, -43, Opcodes.OPC_iushr, -21, 24, -41, -51, -35, 120, -1, -37, Opcodes.OPC_if_icmplt, 9, -48, Opcodes.OPC_fneg, Opcodes.OPC_iinc, Opcodes.OPC_lneg, Opcodes.OPC_new, 29, 26, Opcodes.OPC_laload, Opcodes.OPC_areturn, -2, -42, 52, Opcodes.OPC_dadd, Opcodes.OPC_saload, -46, 42, Opcodes.OPC_dup, Opcodes.OPC_ldiv, Opcodes.OPC_astore_2, Opcodes.OPC_dneg, -25, Opcodes.OPC_d2i, Opcodes.OPC_ladd, -49, Opcodes.OPC_if_icmpeq, -50, Opcodes.OPC_dload_1, -11, Byte.MIN_VALUE, Opcodes.OPC_i2f, Opcodes.OPC_ifnonnull, Opcodes.OPC_if_acmpne, -5, -8, Opcodes.OPC_i2d, Opcodes.OPC_lookupswitch, Opcodes.OPC_fadd, Opcodes.OPC_lstore_0, -33, 72, 0, 20, Opcodes.OPC_ifne, Opcodes.OPC_anewarray, 91, 4, Opcodes.OPC_i2c, 2, Opcodes.OPC_fload_3, 101, Opcodes.OPC_astore_1, Opcodes.OPC_aastore, 12, -14, 41, Opcodes.OPC_dreturn, 23, Opcodes.OPC_idiv, Opcodes.OPC_lstore_2, 48, -23, Opcodes.OPC_i2s, Opcodes.OPC_castore, -9, Opcodes.OPC_ireturn, Opcodes.OPC_imul, 38, Opcodes.OPC_wide, Opcodes.OPC_lushr, -54, 122, 62, Opcodes.OPC_if_icmpne, Opcodes.OPC_lstore, 3, Opcodes.OPC_instanceof, 54, 105, 102, 8, 22, Opcodes.OPC_goto, -68, Opcodes.OPC_multianewarray, -45, 34, Opcodes.OPC_invokespecial, 19, 70, 50, -24, Opcodes.OPC_pop, Opcodes.OPC_l2i, Opcodes.OPC_aload_1, Opcodes.OPC_lor, Opcodes.OPC_getstatic, Opcodes.OPC_astore_3, 100, 28, Opcodes.OPC_tableswitch, Opcodes.OPC_i2b, Opcodes.OPC_pop2, Opcodes.OPC_iaload, Opcodes.OPC_iflt, 92, 27, Opcodes.OPC_fastore, Opcodes.OPC_drem, Opcodes.OPC_lstore_3, Opcodes.OPC_fload_1, 1, 110, -13, 13, Opcodes.OPC_arraylength, 61, 10, Opcodes.OPC_aload_3, 31, Opcodes.OPC_dsub, 51, 25, 123, Opcodes.OPC_dup2_x2, -22, -34, Opcodes.OPC_f2i, -53, Opcodes.OPC_ret, Opcodes.OPC_f2l, Opcodes.OPC_f2d, Opcodes.OPC_lreturn, Opcodes.OPC_dstore_2, Opcodes.OPC_ixor, -28, Opcodes.OPC_invokedynamic, Opcodes.OPC_monitorexit, 21, -47, -32, Opcodes.OPC_l2f, -4, Opcodes.OPC_return, Opcodes.OPC_invokeinterface, Opcodes.OPC_putfield, 7, 121, Opcodes.OPC_invokestatic, Ti.t.f25309s};

    public static final byte[] f14334r = {Opcodes.OPC_getstatic, Opcodes.OPC_invokevirtual, Opcodes.OPC_fload_1, 17, Opcodes.OPC_goto, Opcodes.OPC_l2i, Opcodes.OPC_multianewarray, Opcodes.OPC_if_acmpne, Opcodes.OPC_dstore, Opcodes.OPC_d2l, Opcodes.OPC_wide, -24, Opcodes.OPC_drem, 34, Opcodes.OPC_fstore_0, Opcodes.OPC_monitorexit, Opcodes.OPC_ixor, Opcodes.OPC_dload_1, -51, 24, Opcodes.OPC_fastore, Opcodes.OPC_fadd, Opcodes.OPC_aload_3, -9, 92, 14, Opcodes.OPC_istore_0, -3, -54, Opcodes.OPC_iflt, 13, 15, 121, Opcodes.OPC_f2l, 16, Opcodes.OPC_astore_1, Opcodes.OPC_ineg, 28, 10, Opcodes.OPC_d2i, Opcodes.OPC_iushr, Opcodes.OPC_lcmp, 7, Opcodes.OPC_ifnonnull, Opcodes.OPC_dup2_x2, 20, Opcodes.OPC_if_icmplt, 33, Opcodes.OPC_pop, 80, Opcodes.OPC_astore_3, Opcodes.OPC_ret, Byte.MIN_VALUE, -39, -17, 100, Opcodes.OPC_lstore_2, -49, 60, -18, Opcodes.OPC_iaload, 19, 41, Opcodes.OPC_invokedynamic, 52, 90, Opcodes.OPC_freturn, Opcodes.OPC_l2d, Opcodes.OPC_ladd, 51, 18, Opcodes.OPC_invokeinterface, Opcodes.OPC_castore, Opcodes.OPC_jsr, 21, 5, -10, 3, 6, Opcodes.OPC_dstore_2, Opcodes.OPC_putfield, Opcodes.OPC_fload_3, 9, 22, 12, 42, Opcodes.OPC_fstore, -4, 32, -12, -27, Byte.MAX_VALUE, -41, Opcodes.OPC_daload, Opcodes.OPC_aload_1, 102, 111, -1, Opcodes.OPC_frem, Opcodes.OPC_i2f, -16, Opcodes.OPC_if_icmpgt, Opcodes.OPC_laload, 120, 0, -68, -52, -30, Opcodes.OPC_areturn, -15, Opcodes.OPC_lstore_3, Opcodes.OPC_getfield, 48, Opcodes.OPC_swap, 96, 4, -20, Opcodes.OPC_if_acmpeq, -29, Opcodes.OPC_f2i, -25, 29, Opcodes.OPC_athrow, Opcodes.OPC_iinc, 123, -26, Opcodes.OPC_lor, -8, -34, -40, -46, 23, -50, Opcodes.OPC_astore_0, 71, -42, 105, Opcodes.OPC_idiv, 25, Opcodes.OPC_ifeq, Opcodes.OPC_ifne, 1, Opcodes.OPC_putstatic, Opcodes.OPC_i2l, Opcodes.OPC_return, -7, Opcodes.OPC_dup, Opcodes.OPC_monitorenter, Opcodes.OPC_lstore, -23, Opcodes.OPC_goto_w, Opcodes.OPC_if_icmpne, -19, Opcodes.OPC_iastore, Opcodes.OPC_l2f, Opcodes.OPC_imul, Opcodes.OPC_ldiv, -43, 38, Opcodes.OPC_i2b, Opcodes.OPC_i2d, Opcodes.OPC_pop2, Opcodes.OPC_anewarray, Opcodes.OPC_jsr_w, Opcodes.OPC_dcmpg, -36, Opcodes.OPC_lneg, Opcodes.OPC_checkcast, Opcodes.OPC_fneg, -11, Opcodes.OPC_dsub, 107, Opcodes.OPC_iand, -21, Opcodes.OPC_dastore, -53, -47, 91, Opcodes.OPC_if_icmpeq, 11, -37, 64, Opcodes.OPC_i2c, 26, -6, Opcodes.OPC_ireturn, -28, Ti.t.f25309s, 113, 31, 101, Opcodes.OPC_f2d, Opcodes.OPC_dcmpl, Opcodes.OPC_ifle, Opcodes.OPC_fcmpl, Opcodes.OPC_d2f, Opcodes.OPC_dup2_x1, Opcodes.OPC_invokespecial, Opcodes.OPC_instanceof, Opcodes.OPC_dreturn, Opcodes.OPC_bastore, -5, 2, -32, Opcodes.OPC_saload, Opcodes.OPC_new, Opcodes.OPC_astore, Opcodes.OPC_astore_2, Opcodes.OPC_lreturn, Opcodes.OPC_aload_2, 61, Opcodes.OPC_sastore, 8, 27, Opcodes.OPC_dstore_3, Opcodes.OPC_i2s, 106, Opcodes.OPC_lookupswitch, Opcodes.OPC_invokestatic, 122, -14, Opcodes.OPC_lushr, -38, Opcodes.OPC_lstore_0, -2, 62, Opcodes.OPC_arraylength, -22, Opcodes.OPC_tableswitch, Opcodes.OPC_fstore_1, Opcodes.OPC_ifnull, -48, 54, 72, 112, Opcodes.OPC_fcmpg, Opcodes.OPC_dneg, Opcodes.OPC_fload_2, Opcodes.OPC_aastore, -33, -13, Opcodes.OPC_lxor, 40, 50, Opcodes.OPC_fstore_2, 30, Opcodes.OPC_if_icmple, -45, Opcodes.OPC_if_icmpge, 70, 110, Opcodes.OPC_ifge, -35, Opcodes.OPC_dadd, -44, Opcodes.OPC_ifgt};

    public long[] f14335a;

    public long[] f14336b;

    public long[][] f14337c;

    public int f14338d;

    public int f14339e;

    public int f14340f;

    public boolean f14341g;

    public C2798x(int i10) throws IllegalArgumentException {
        if (i10 != 128 && i10 != 256 && i10 != 512) {
            throw new IllegalArgumentException("unsupported block length: only 128/256/512 are allowed");
        }
        int i11 = i10 >>> 6;
        this.f14338d = i11;
        this.f14335a = new long[i11];
    }

    private static long m(long j10) {
        long q10 = q(j10);
        long s10 = s(8, j10) ^ j10;
        long s11 = (s10 ^ s(16, s10)) ^ s(48, j10);
        return ((s(32, r((j10 ^ s11) ^ q10)) ^ s11) ^ s(40, q10)) ^ s(48, q10);
    }

    public static long n(long j10) {
        long s10 = s(8, j10) ^ j10;
        long s11 = (s10 ^ s(32, s10)) ^ s(48, j10);
        long j11 = s11 ^ j10;
        long s12 = s(48, j10);
        long s13 = s(56, j10);
        long q10 = q(j11 ^ s13) ^ s(56, j11);
        long q11 = q(s(40, q(q10) ^ j10) ^ (s(16, j11) ^ j10)) ^ (j11 ^ s12);
        return q(s(40, ((j10 ^ s(32, j11)) ^ s13) ^ q(((s12 ^ (s(24, j10) ^ j11)) ^ s13) ^ q(q(q11) ^ s(16, s11))))) ^ s11;
    }

    public static long q(long j10) {
        return (((j10 & Utf8.f68990b) >>> 7) * 29) ^ ((9187201950435737471L & j10) << 1);
    }

    public static long r(long j10) {
        return (((j10 & 4629771061636907072L) >>> 6) * 29) ^ (((4557430888798830399L & j10) << 2) ^ (((Utf8.f68990b & j10) >>> 6) * 29));
    }

    private static long s(int i10, long j10) {
        return (j10 << (-i10)) | (j10 >>> i10);
    }

    public final void A(int i10) {
        long[] jArr = this.f14337c[i10];
        for (int i11 = 0; i11 < this.f14338d; i11++) {
            long[] jArr2 = this.f14335a;
            jArr2[i11] = jArr2[i11] ^ jArr[i11];
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x008b A[LOOP:0: B:21:0x0086->B:23:0x008b, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0094 A[EDGE_INSN: B:24:0x0094->B:25:0x0094 BREAK  A[LOOP:0: B:21:0x0086->B:23:0x008b], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:27:0x009f  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00b4  */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void a(boolean z10, InterfaceC2379k interfaceC2379k) throws IllegalArgumentException {
        Hi.c cVar;
        int i10;
        long[][] jArr;
        if (!(interfaceC2379k instanceof C3360o0)) {
            throw new IllegalArgumentException("Invalid parameter passed to DSTU7624Engine init");
        }
        this.f14341g = z10;
        byte[] b10 = ((C3360o0) interfaceC2379k).b();
        int length = b10.length << 3;
        int i11 = this.f14338d << 6;
        if (length != 128 && length != 256 && length != 512) {
            throw new IllegalArgumentException("unsupported key length: only 128/256/512 are allowed");
        }
        if (length != i11 && length != i11 * 2) {
            throw new IllegalArgumentException("Unsupported key length");
        }
        if (length == 128) {
            this.f14340f = 10;
            cVar = new Hi.c(b(), 128, interfaceC2379k, x0.a(z10));
        } else {
            if (length != 256) {
                if (length == 512) {
                    this.f14340f = 18;
                    cVar = new Hi.c(b(), 256, interfaceC2379k, x0.a(z10));
                }
                this.f14339e = length >>> 6;
                this.f14337c = new long[this.f14340f + 1];
                i10 = 0;
                while (true) {
                    jArr = this.f14337c;
                    if (i10 < jArr.length) {
                        break;
                    }
                    jArr[i10] = new long[this.f14338d];
                    i10++;
                }
                long[] jArr2 = new long[this.f14339e];
                this.f14336b = jArr2;
                if (b10.length == (length >>> 3)) {
                    throw new IllegalArgumentException("Invalid key parameter passed to DSTU7624Engine init");
                }
                org.bouncycastle.util.p.y(b10, 0, jArr2);
                long[] jArr3 = new long[this.f14338d];
                y(this.f14336b, jArr3);
                x(this.f14336b, jArr3);
                z();
                return;
            }
            this.f14340f = 14;
            cVar = new Hi.c(b(), 256, interfaceC2379k, x0.a(z10));
        }
        Bi.r.a(cVar);
        this.f14339e = length >>> 6;
        this.f14337c = new long[this.f14340f + 1];
        i10 = 0;
        while (true) {
            jArr = this.f14337c;
            if (i10 < jArr.length) {
            }
            jArr[i10] = new long[this.f14338d];
            i10++;
        }
        long[] jArr22 = new long[this.f14339e];
        this.f14336b = jArr22;
        if (b10.length == (length >>> 3)) {
        }
    }

    @Override
    public String b() {
        return "DSTU7624";
    }

    @Override
    public int c() {
        return this.f14338d << 3;
    }

    public final void f(int i10) {
        long[] jArr = this.f14337c[i10];
        for (int i11 = 0; i11 < this.f14338d; i11++) {
            long[] jArr2 = this.f14335a;
            jArr2[i11] = jArr2[i11] + jArr[i11];
        }
    }

    @Override
    public int g(byte[] bArr, int i10, byte[] bArr2, int i11) throws DataLengthException, IllegalStateException {
        int i12;
        if (this.f14336b == null) {
            throw new IllegalStateException("DSTU7624Engine not initialised");
        }
        if (c() + i10 > bArr.length) {
            throw new DataLengthException("Input buffer too short");
        }
        if (c() + i11 > bArr2.length) {
            throw new OutputLengthException("Output buffer too short");
        }
        int i13 = 0;
        if (this.f14341g) {
            if (this.f14338d != 2) {
                org.bouncycastle.util.p.y(bArr, i10, this.f14335a);
                f(0);
                while (true) {
                    v();
                    u();
                    o();
                    i13++;
                    i12 = this.f14340f;
                    if (i13 == i12) {
                        break;
                    }
                    A(i13);
                }
                f(i12);
                org.bouncycastle.util.p.L(this.f14335a, bArr2, i11);
            } else {
                j(bArr, i10, bArr2, i11);
            }
        } else if (this.f14338d != 2) {
            org.bouncycastle.util.p.y(bArr, i10, this.f14335a);
            w(this.f14340f);
            int i14 = this.f14340f;
            while (true) {
                p();
                k();
                l();
                i14--;
                if (i14 == 0) {
                    break;
                }
                A(i14);
            }
            w(0);
            org.bouncycastle.util.p.L(this.f14335a, bArr2, i11);
        } else {
            i(bArr, i10, bArr2, i11);
        }
        return c();
    }

    public final void i(byte[] bArr, int i10, byte[] bArr2, int i11) {
        long x10 = org.bouncycastle.util.p.x(bArr, i10);
        long x11 = org.bouncycastle.util.p.x(bArr, i10 + 8);
        long[][] jArr = this.f14337c;
        int i12 = this.f14340f;
        long[] jArr2 = jArr[i12];
        long j10 = x10 - jArr2[0];
        long j11 = x11 - jArr2[1];
        while (true) {
            long n10 = n(j10);
            long n11 = n(j11);
            int i13 = (int) n10;
            int i14 = (int) (n10 >>> 32);
            int i15 = (int) n11;
            int i16 = (int) (n11 >>> 32);
            byte[] bArr3 = f14331o;
            byte b10 = bArr3[i13 & 255];
            byte[] bArr4 = f14332p;
            byte b11 = bArr4[(i13 >>> 8) & 255];
            byte[] bArr5 = f14333q;
            byte b12 = bArr5[(i13 >>> 16) & 255];
            byte[] bArr6 = f14334r;
            int i17 = (bArr6[i13 >>> 24] << 24) | ((b12 & 255) << 16) | (b10 & 255) | ((b11 & 255) << 8);
            byte b13 = bArr3[i16 & 255];
            byte b14 = bArr4[(i16 >>> 8) & 255];
            byte b15 = bArr5[(i16 >>> 16) & 255];
            long j12 = (((bArr6[i16 >>> 24] << 24) | (((b13 & 255) | ((b14 & 255) << 8)) | ((b15 & 255) << 16))) << 32) | (i17 & 4294967295L);
            int i18 = (bArr6[i15 >>> 24] << 24) | (bArr3[i15 & 255] & 255) | ((bArr4[(i15 >>> 8) & 255] & 255) << 8) | ((bArr5[(i15 >>> 16) & 255] & 255) << 16);
            byte b16 = bArr3[i14 & 255];
            byte b17 = bArr4[(i14 >>> 8) & 255];
            byte b18 = bArr5[(i14 >>> 16) & 255];
            long j13 = (i18 & 4294967295L) | (((bArr6[i14 >>> 24] << 24) | (((b16 & 255) | ((b17 & 255) << 8)) | ((b18 & 255) << 16))) << 32);
            i12--;
            if (i12 == 0) {
                long[] jArr3 = this.f14337c[0];
                long j14 = j12 - jArr3[0];
                long j15 = j13 - jArr3[1];
                org.bouncycastle.util.p.J(j14, bArr2, i11);
                org.bouncycastle.util.p.J(j15, bArr2, i11 + 8);
                return;
            }
            long[] jArr4 = this.f14337c[i12];
            long j16 = j12 ^ jArr4[0];
            j11 = j13 ^ jArr4[1];
            j10 = j16;
        }
    }

    public final void j(byte[] bArr, int i10, byte[] bArr2, int i11) {
        long x10 = org.bouncycastle.util.p.x(bArr, i10);
        long x11 = org.bouncycastle.util.p.x(bArr, i10 + 8);
        long[] jArr = this.f14337c[0];
        long j10 = x10 + jArr[0];
        long j11 = x11 + jArr[1];
        int i12 = 0;
        while (true) {
            int i13 = (int) j10;
            int i14 = (int) (j10 >>> 32);
            int i15 = (int) j11;
            int i16 = (int) (j11 >>> 32);
            byte[] bArr3 = f14327k;
            byte b10 = bArr3[i13 & 255];
            byte[] bArr4 = f14328l;
            byte b11 = bArr4[(i13 >>> 8) & 255];
            byte[] bArr5 = f14329m;
            byte b12 = bArr5[(i13 >>> 16) & 255];
            byte[] bArr6 = f14330n;
            int i17 = ((b12 & 255) << 16) | (b10 & 255) | ((b11 & 255) << 8) | (bArr6[i13 >>> 24] << 24);
            byte b13 = bArr3[i16 & 255];
            byte b14 = bArr4[(i16 >>> 8) & 255];
            byte b15 = bArr5[(i16 >>> 16) & 255];
            long j12 = (((bArr6[i16 >>> 24] << 24) | (((b13 & 255) | ((b14 & 255) << 8)) | ((b15 & 255) << 16))) << 32) | (i17 & 4294967295L);
            int i18 = (bArr6[i15 >>> 24] << 24) | (bArr3[i15 & 255] & 255) | ((bArr4[(i15 >>> 8) & 255] & 255) << 8) | ((bArr5[(i15 >>> 16) & 255] & 255) << 16);
            byte b16 = bArr3[i14 & 255];
            byte b17 = bArr4[(i14 >>> 8) & 255];
            byte b18 = bArr5[(i14 >>> 16) & 255];
            int i19 = bArr6[i14 >>> 24] << 24;
            long m10 = m(j12);
            long m11 = m((i18 & 4294967295L) | ((i19 | (((b16 & 255) | ((b17 & 255) << 8)) | ((b18 & 255) << 16))) << 32));
            i12++;
            int i20 = this.f14340f;
            if (i12 == i20) {
                long[] jArr2 = this.f14337c[i20];
                long j13 = m10 + jArr2[0];
                long j14 = m11 + jArr2[1];
                org.bouncycastle.util.p.J(j13, bArr2, i11);
                org.bouncycastle.util.p.J(j14, bArr2, i11 + 8);
                return;
            }
            long[] jArr3 = this.f14337c[i12];
            long j15 = m10 ^ jArr3[0];
            j11 = m11 ^ jArr3[1];
            j10 = j15;
        }
    }

    public final void k() {
        int i10 = this.f14338d;
        if (i10 == 2) {
            long[] jArr = this.f14335a;
            long j10 = jArr[0];
            long j11 = jArr[1];
            long j12 = C12510d2.f66536l & (j10 ^ j11);
            jArr[0] = j10 ^ j12;
            jArr[1] = j12 ^ j11;
            return;
        }
        if (i10 == 4) {
            long[] jArr2 = this.f14335a;
            long j13 = jArr2[0];
            long j14 = jArr2[1];
            long j15 = jArr2[2];
            long j16 = jArr2[3];
            long j17 = (j13 ^ j14) & (-281470681808896L);
            long j18 = j13 ^ j17;
            long j19 = j14 ^ j17;
            long j20 = (j15 ^ j16) & (-281470681808896L);
            long j21 = j15 ^ j20;
            long j22 = j16 ^ j20;
            long j23 = (j18 ^ j21) & C12510d2.f66536l;
            long j24 = j18 ^ j23;
            long j25 = (j19 ^ j22) & 281474976645120L;
            jArr2[0] = j24;
            jArr2[1] = j19 ^ j25;
            jArr2[2] = j21 ^ j23;
            jArr2[3] = j25 ^ j22;
            return;
        }
        if (i10 != 8) {
            throw new IllegalStateException("unsupported block length: only 128/256/512 are allowed");
        }
        long[] jArr3 = this.f14335a;
        long j26 = jArr3[0];
        long j27 = jArr3[1];
        long j28 = jArr3[2];
        long j29 = jArr3[3];
        long j30 = jArr3[4];
        long j31 = jArr3[5];
        long j32 = jArr3[6];
        long j33 = jArr3[7];
        long j34 = (j26 ^ j27) & (-71777214294589696L);
        long j35 = j26 ^ j34;
        long j36 = j27 ^ j34;
        long j37 = (j28 ^ j29) & (-71777214294589696L);
        long j38 = j28 ^ j37;
        long j39 = j29 ^ j37;
        long j40 = (j30 ^ j31) & (-71777214294589696L);
        long j41 = j30 ^ j40;
        long j42 = j31 ^ j40;
        long j43 = (j32 ^ j33) & (-71777214294589696L);
        long j44 = j32 ^ j43;
        long j45 = j33 ^ j43;
        long j46 = (j35 ^ j38) & (-281470681808896L);
        long j47 = j35 ^ j46;
        long j48 = j38 ^ j46;
        long j49 = (j36 ^ j39) & 72056494543077120L;
        long j50 = j36 ^ j49;
        long j51 = j39 ^ j49;
        long j52 = (j41 ^ j44) & (-281470681808896L);
        long j53 = j41 ^ j52;
        long j54 = j44 ^ j52;
        long j55 = (j42 ^ j45) & 72056494543077120L;
        long j56 = j42 ^ j55;
        long j57 = j45 ^ j55;
        long j58 = (j47 ^ j53) & C12510d2.f66536l;
        long j59 = j47 ^ j58;
        long j60 = j53 ^ j58;
        long j61 = (j50 ^ j56) & 72057594021150720L;
        long j62 = j50 ^ j61;
        long j63 = (j48 ^ j54) & 281474976645120L;
        long j64 = j48 ^ j63;
        long j65 = j63 ^ j54;
        long j66 = (j51 ^ j57) & 1099511627520L;
        jArr3[0] = j59;
        jArr3[1] = j62;
        jArr3[2] = j64;
        jArr3[3] = j51 ^ j66;
        jArr3[4] = j60;
        jArr3[5] = j56 ^ j61;
        jArr3[6] = j65;
        jArr3[7] = j57 ^ j66;
    }

    public final void l() {
        for (int i10 = 0; i10 < this.f14338d; i10++) {
            long[] jArr = this.f14335a;
            long j10 = jArr[i10];
            int i11 = (int) j10;
            int i12 = (int) (j10 >>> 32);
            byte[] bArr = f14331o;
            byte b10 = bArr[i11 & 255];
            byte[] bArr2 = f14332p;
            byte b11 = bArr2[(i11 >>> 8) & 255];
            byte[] bArr3 = f14333q;
            byte b12 = bArr3[(i11 >>> 16) & 255];
            int i13 = (f14334r[i11 >>> 24] << 24) | (b10 & 255) | ((b11 & 255) << 8) | ((b12 & 255) << 16);
            byte b13 = bArr[i12 & 255];
            byte b14 = bArr2[(i12 >>> 8) & 255];
            byte b15 = bArr3[(i12 >>> 16) & 255];
            jArr[i10] = (i13 & 4294967295L) | (((r11[i12 >>> 24] << 24) | (((b13 & 255) | ((b14 & 255) << 8)) | ((b15 & 255) << 16))) << 32);
        }
    }

    public final void o() {
        for (int i10 = 0; i10 < this.f14338d; i10++) {
            long[] jArr = this.f14335a;
            jArr[i10] = m(jArr[i10]);
        }
    }

    public final void p() {
        for (int i10 = 0; i10 < this.f14338d; i10++) {
            long[] jArr = this.f14335a;
            jArr[i10] = n(jArr[i10]);
        }
    }

    @Override
    public void reset() {
        org.bouncycastle.util.a.l0(this.f14335a, 0L);
    }

    public final void t(long[] jArr, long[] jArr2) {
        int i10 = this.f14338d;
        if (i10 == 2) {
            long j10 = jArr[0];
            long j11 = jArr[1];
            jArr2[0] = (j10 >>> 56) | (j11 << 8);
            jArr2[1] = (j10 << 8) | (j11 >>> 56);
            return;
        }
        if (i10 == 4) {
            long j12 = jArr[0];
            long j13 = jArr[1];
            long j14 = jArr[2];
            long j15 = jArr[3];
            jArr2[0] = (j13 >>> 24) | (j14 << 40);
            jArr2[1] = (j14 >>> 24) | (j15 << 40);
            jArr2[2] = (j15 >>> 24) | (j12 << 40);
            jArr2[3] = (j12 >>> 24) | (j13 << 40);
            return;
        }
        if (i10 != 8) {
            throw new IllegalStateException("unsupported block length: only 128/256/512 are allowed");
        }
        long j16 = jArr[0];
        long j17 = jArr[1];
        long j18 = jArr[2];
        long j19 = jArr[3];
        long j20 = jArr[4];
        long j21 = jArr[5];
        long j22 = jArr[6];
        long j23 = jArr[7];
        jArr2[0] = (j18 >>> 24) | (j19 << 40);
        jArr2[1] = (j19 >>> 24) | (j20 << 40);
        jArr2[2] = (j20 >>> 24) | (j21 << 40);
        jArr2[3] = (j21 >>> 24) | (j22 << 40);
        jArr2[4] = (j22 >>> 24) | (j23 << 40);
        jArr2[5] = (j23 >>> 24) | (j16 << 40);
        jArr2[6] = (j16 >>> 24) | (j17 << 40);
        jArr2[7] = (j17 >>> 24) | (j18 << 40);
    }

    public final void u() {
        int i10 = this.f14338d;
        if (i10 == 2) {
            long[] jArr = this.f14335a;
            long j10 = jArr[0];
            long j11 = jArr[1];
            long j12 = C12510d2.f66536l & (j10 ^ j11);
            jArr[0] = j10 ^ j12;
            jArr[1] = j12 ^ j11;
            return;
        }
        if (i10 == 4) {
            long[] jArr2 = this.f14335a;
            long j13 = jArr2[0];
            long j14 = jArr2[1];
            long j15 = jArr2[2];
            long j16 = jArr2[3];
            long j17 = (j13 ^ j15) & C12510d2.f66536l;
            long j18 = j13 ^ j17;
            long j19 = j15 ^ j17;
            long j20 = (j14 ^ j16) & 281474976645120L;
            long j21 = j14 ^ j20;
            long j22 = j16 ^ j20;
            long j23 = (j18 ^ j21) & (-281470681808896L);
            long j24 = (j19 ^ j22) & (-281470681808896L);
            jArr2[0] = j18 ^ j23;
            jArr2[1] = j21 ^ j23;
            jArr2[2] = j19 ^ j24;
            jArr2[3] = j22 ^ j24;
            return;
        }
        if (i10 != 8) {
            throw new IllegalStateException("unsupported block length: only 128/256/512 are allowed");
        }
        long[] jArr3 = this.f14335a;
        long j25 = jArr3[0];
        long j26 = jArr3[1];
        long j27 = jArr3[2];
        long j28 = jArr3[3];
        long j29 = jArr3[4];
        long j30 = jArr3[5];
        long j31 = jArr3[6];
        long j32 = jArr3[7];
        long j33 = (j25 ^ j29) & C12510d2.f66536l;
        long j34 = j25 ^ j33;
        long j35 = j29 ^ j33;
        long j36 = (j26 ^ j30) & 72057594021150720L;
        long j37 = j26 ^ j36;
        long j38 = j30 ^ j36;
        long j39 = (j27 ^ j31) & 281474976645120L;
        long j40 = j27 ^ j39;
        long j41 = j31 ^ j39;
        long j42 = (j28 ^ j32) & 1099511627520L;
        long j43 = j28 ^ j42;
        long j44 = j32 ^ j42;
        long j45 = (j34 ^ j40) & (-281470681808896L);
        long j46 = j34 ^ j45;
        long j47 = j40 ^ j45;
        long j48 = (j37 ^ j43) & 72056494543077120L;
        long j49 = j37 ^ j48;
        long j50 = j43 ^ j48;
        long j51 = (j35 ^ j41) & (-281470681808896L);
        long j52 = j35 ^ j51;
        long j53 = j41 ^ j51;
        long j54 = (j38 ^ j44) & 72056494543077120L;
        long j55 = j38 ^ j54;
        long j56 = j44 ^ j54;
        long j57 = (j46 ^ j49) & (-71777214294589696L);
        long j58 = j46 ^ j57;
        long j59 = j49 ^ j57;
        long j60 = (j47 ^ j50) & (-71777214294589696L);
        long j61 = j47 ^ j60;
        long j62 = j50 ^ j60;
        long j63 = (j52 ^ j55) & (-71777214294589696L);
        long j64 = j52 ^ j63;
        long j65 = j55 ^ j63;
        long j66 = (j53 ^ j56) & (-71777214294589696L);
        jArr3[0] = j58;
        jArr3[1] = j59;
        jArr3[2] = j61;
        jArr3[3] = j62;
        jArr3[4] = j64;
        jArr3[5] = j65;
        jArr3[6] = j53 ^ j66;
        jArr3[7] = j56 ^ j66;
    }

    public final void v() {
        for (int i10 = 0; i10 < this.f14338d; i10++) {
            long[] jArr = this.f14335a;
            long j10 = jArr[i10];
            int i11 = (int) j10;
            int i12 = (int) (j10 >>> 32);
            byte[] bArr = f14327k;
            byte b10 = bArr[i11 & 255];
            byte[] bArr2 = f14328l;
            byte b11 = bArr2[(i11 >>> 8) & 255];
            byte[] bArr3 = f14329m;
            byte b12 = bArr3[(i11 >>> 16) & 255];
            int i13 = (f14330n[i11 >>> 24] << 24) | (b10 & 255) | ((b11 & 255) << 8) | ((b12 & 255) << 16);
            byte b13 = bArr[i12 & 255];
            byte b14 = bArr2[(i12 >>> 8) & 255];
            byte b15 = bArr3[(i12 >>> 16) & 255];
            jArr[i10] = (i13 & 4294967295L) | (((r11[i12 >>> 24] << 24) | (((b13 & 255) | ((b14 & 255) << 8)) | ((b15 & 255) << 16))) << 32);
        }
    }

    public final void w(int i10) {
        long[] jArr = this.f14337c[i10];
        for (int i11 = 0; i11 < this.f14338d; i11++) {
            long[] jArr2 = this.f14335a;
            jArr2[i11] = jArr2[i11] - jArr[i11];
        }
    }

    public final void x(long[] jArr, long[] jArr2) {
        int i10;
        int i11;
        int i12 = this.f14339e;
        long[] jArr3 = new long[i12];
        long[] jArr4 = new long[this.f14338d];
        System.arraycopy(jArr, 0, jArr3, 0, i12);
        long j10 = 281479271743489L;
        int i13 = 0;
        while (true) {
            for (int i14 = 0; i14 < this.f14338d; i14++) {
                jArr4[i14] = jArr2[i14] + j10;
            }
            for (int i15 = 0; i15 < this.f14338d; i15++) {
                this.f14335a[i15] = jArr3[i15] + jArr4[i15];
            }
            v();
            u();
            o();
            for (int i16 = 0; i16 < this.f14338d; i16++) {
                long[] jArr5 = this.f14335a;
                jArr5[i16] = jArr5[i16] ^ jArr4[i16];
            }
            v();
            u();
            o();
            int i17 = 0;
            while (true) {
                i10 = this.f14338d;
                if (i17 >= i10) {
                    break;
                }
                long[] jArr6 = this.f14335a;
                jArr6[i17] = jArr6[i17] + jArr4[i17];
                i17++;
            }
            System.arraycopy(this.f14335a, 0, this.f14337c[i13], 0, i10);
            if (this.f14340f == i13) {
                return;
            }
            if (this.f14338d != this.f14339e) {
                i13 += 2;
                j10 <<= 1;
                for (int i18 = 0; i18 < this.f14338d; i18++) {
                    jArr4[i18] = jArr2[i18] + j10;
                }
                int i19 = 0;
                while (true) {
                    int i20 = this.f14338d;
                    if (i19 >= i20) {
                        break;
                    }
                    this.f14335a[i19] = jArr3[i20 + i19] + jArr4[i19];
                    i19++;
                }
                v();
                u();
                o();
                for (int i21 = 0; i21 < this.f14338d; i21++) {
                    long[] jArr7 = this.f14335a;
                    jArr7[i21] = jArr7[i21] ^ jArr4[i21];
                }
                v();
                u();
                o();
                int i22 = 0;
                while (true) {
                    i11 = this.f14338d;
                    if (i22 >= i11) {
                        break;
                    }
                    long[] jArr8 = this.f14335a;
                    jArr8[i22] = jArr8[i22] + jArr4[i22];
                    i22++;
                }
                System.arraycopy(this.f14335a, 0, this.f14337c[i13], 0, i11);
                if (this.f14340f == i13) {
                    return;
                }
            }
            i13 += 2;
            j10 <<= 1;
            long j11 = jArr3[0];
            for (int i23 = 1; i23 < i12; i23++) {
                jArr3[i23 - 1] = jArr3[i23];
            }
            jArr3[i12 - 1] = j11;
        }
    }

    public final void y(long[] jArr, long[] jArr2) {
        int i10 = this.f14338d;
        long[] jArr3 = new long[i10];
        long[] jArr4 = new long[i10];
        long[] jArr5 = new long[i10];
        this.f14335a = jArr5;
        long j10 = jArr5[0];
        int i11 = this.f14339e;
        jArr5[0] = j10 + i10 + i11 + 1;
        System.arraycopy(jArr, 0, jArr3, 0, i10);
        if (i10 == i11) {
            System.arraycopy(jArr, 0, jArr4, 0, i10);
        } else {
            int i12 = this.f14338d;
            System.arraycopy(jArr, i12, jArr4, 0, i12);
        }
        int i13 = 0;
        while (true) {
            long[] jArr6 = this.f14335a;
            if (i13 >= jArr6.length) {
                break;
            }
            jArr6[i13] = jArr6[i13] + jArr3[i13];
            i13++;
        }
        v();
        u();
        o();
        int i14 = 0;
        while (true) {
            long[] jArr7 = this.f14335a;
            if (i14 >= jArr7.length) {
                break;
            }
            jArr7[i14] = jArr7[i14] ^ jArr4[i14];
            i14++;
        }
        v();
        u();
        o();
        int i15 = 0;
        while (true) {
            long[] jArr8 = this.f14335a;
            if (i15 >= jArr8.length) {
                v();
                u();
                o();
                System.arraycopy(this.f14335a, 0, jArr2, 0, this.f14338d);
                return;
            }
            jArr8[i15] = jArr8[i15] + jArr3[i15];
            i15++;
        }
    }

    public final void z() {
        for (int i10 = 1; i10 < this.f14340f; i10 += 2) {
            long[][] jArr = this.f14337c;
            t(jArr[i10 - 1], jArr[i10]);
        }
    }
}
