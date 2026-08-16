package com.android.tools.r8.internal;

import java.util.ArrayList;

@InterfaceC9597tW(d1 = {"\u0000x\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b&\n\u0002\u0018\u0002\n\u0002\bB\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0012\n\u0002\u0018\u0002\n\u0002\b\u000b\"/\u0010\u0002\u001a\u00020\u0001*\u00020\u00032\u0006\u0010\u0000\u001a\u00020\u00018F@FX\u0086\u008e\u0002\u00a2\u0006\u0012\n\u0004\b\b\u0010\t\u001a\u0004\b\u0004\u0010\u0005\"\u0004\b\u0006\u0010\u0007\"/\u0010\u0002\u001a\u00020\u0001*\u00020\n2\u0006\u0010\u0000\u001a\u00020\u00018F@FX\u0086\u008e\u0002\u00a2\u0006\u0012\n\u0004\b\r\u0010\t\u001a\u0004\b\u0004\u0010\u000b\"\u0004\b\u0006\u0010\f\"/\u0010\u0002\u001a\u00020\u0001*\u00020\u000e2\u0006\u0010\u0000\u001a\u00020\u00018F@FX\u0086\u008e\u0002\u00a2\u0006\u0012\n\u0004\b\u0011\u0010\t\u001a\u0004\b\u0004\u0010\u000f\"\u0004\b\u0006\u0010\u0010\"/\u0010\u0002\u001a\u00020\u0001*\u00020\u00122\u0006\u0010\u0000\u001a\u00020\u00018F@FX\u0086\u008e\u0002\u00a2\u0006\u0012\n\u0004\b\u0015\u0010\t\u001a\u0004\b\u0004\u0010\u0013\"\u0004\b\u0006\u0010\u0014\"/\u0010\u0002\u001a\u00020\u0001*\u00020\u00162\u0006\u0010\u0000\u001a\u00020\u00018F@FX\u0086\u008e\u0002\u00a2\u0006\u0012\n\u0004\b\u0019\u0010\t\u001a\u0004\b\u0004\u0010\u0017\"\u0004\b\u0006\u0010\u0018\"/\u0010\u0002\u001a\u00020\u0001*\u00020\u001a2\u0006\u0010\u0000\u001a\u00020\u00018F@FX\u0086\u008e\u0002\u00a2\u0006\u0012\n\u0004\b\u001d\u0010\t\u001a\u0004\b\u0004\u0010\u001b\"\u0004\b\u0006\u0010\u001c\"/\u0010\u0002\u001a\u00020\u0001*\u00020\u001e2\u0006\u0010\u0000\u001a\u00020\u00018F@FX\u0086\u008e\u0002\u00a2\u0006\u0012\n\u0004\b!\u0010\t\u001a\u0004\b\u0004\u0010\u001f\"\u0004\b\u0006\u0010 \"/\u0010#\u001a\u00020\"*\u00020\u00032\u0006\u0010\u0000\u001a\u00020\"8F@FX\u0086\u008e\u0002\u00a2\u0006\u0012\n\u0004\b(\u0010)\u001a\u0004\b$\u0010%\"\u0004\b&\u0010'\"/\u0010+\u001a\u00020**\u00020\u00032\u0006\u0010\u0000\u001a\u00020*8F@FX\u0086\u008e\u0002\u00a2\u0006\u0012\n\u0004\b0\u0010)\u001a\u0004\b,\u0010-\"\u0004\b.\u0010/\"/\u00102\u001a\u000201*\u00020\u00032\u0006\u0010\u0000\u001a\u0002018F@FX\u0086\u008e\u0002\u00a2\u0006\u0012\n\u0004\b7\u0010)\u001a\u0004\b3\u00104\"\u0004\b5\u00106\"/\u00108\u001a\u00020\u0001*\u00020\u00032\u0006\u0010\u0000\u001a\u00020\u00018F@FX\u0086\u008e\u0002\u00a2\u0006\u0012\n\u0004\b:\u0010\t\u001a\u0004\b8\u0010\u0005\"\u0004\b9\u0010\u0007\"/\u0010;\u001a\u00020\u0001*\u00020\u00032\u0006\u0010\u0000\u001a\u00020\u00018F@FX\u0086\u008e\u0002\u00a2\u0006\u0012\n\u0004\b=\u0010\t\u001a\u0004\b;\u0010\u0005\"\u0004\b<\u0010\u0007\"/\u0010>\u001a\u00020\u0001*\u00020\u00032\u0006\u0010\u0000\u001a\u00020\u00018F@FX\u0086\u008e\u0002\u00a2\u0006\u0012\n\u0004\b@\u0010\t\u001a\u0004\b>\u0010\u0005\"\u0004\b?\u0010\u0007\"/\u0010A\u001a\u00020\u0001*\u00020\u00032\u0006\u0010\u0000\u001a\u00020\u00018F@FX\u0086\u008e\u0002\u00a2\u0006\u0012\n\u0004\bC\u0010\t\u001a\u0004\bA\u0010\u0005\"\u0004\bB\u0010\u0007\"/\u0010D\u001a\u00020\u0001*\u00020\u00032\u0006\u0010\u0000\u001a\u00020\u00018F@FX\u0086\u008e\u0002\u00a2\u0006\u0012\n\u0004\bF\u0010\t\u001a\u0004\bD\u0010\u0005\"\u0004\bE\u0010\u0007\"/\u0010G\u001a\u00020\u0001*\u00020\u00032\u0006\u0010\u0000\u001a\u00020\u00018F@FX\u0086\u008e\u0002\u00a2\u0006\u0012\n\u0004\bI\u0010\t\u001a\u0004\bG\u0010\u0005\"\u0004\bH\u0010\u0007\"/\u0010J\u001a\u00020\u0001*\u00020\u00032\u0006\u0010\u0000\u001a\u00020\u00018F@FX\u0086\u008e\u0002\u00a2\u0006\u0012\n\u0004\bM\u0010\t\u001a\u0004\bK\u0010\u0005\"\u0004\bL\u0010\u0007\"/\u0010+\u001a\u00020**\u00020\n2\u0006\u0010\u0000\u001a\u00020*8F@FX\u0086\u008e\u0002\u00a2\u0006\u0012\n\u0004\bP\u0010)\u001a\u0004\b,\u0010N\"\u0004\b.\u0010O\"/\u0010Q\u001a\u00020\u0001*\u00020\n2\u0006\u0010\u0000\u001a\u00020\u00018F@FX\u0086\u008e\u0002\u00a2\u0006\u0012\n\u0004\bS\u0010\t\u001a\u0004\bQ\u0010\u000b\"\u0004\bR\u0010\f\"/\u0010T\u001a\u00020\u0001*\u00020\n2\u0006\u0010\u0000\u001a\u00020\u00018F@FX\u0086\u008e\u0002\u00a2\u0006\u0012\n\u0004\bW\u0010\t\u001a\u0004\bU\u0010\u000b\"\u0004\bV\u0010\f\"/\u00102\u001a\u00020X*\u00020\u000e2\u0006\u0010\u0000\u001a\u00020X8F@FX\u0086\u008e\u0002\u00a2\u0006\u0012\n\u0004\b[\u0010)\u001a\u0004\b3\u0010Y\"\u0004\b5\u0010Z\"/\u0010+\u001a\u00020**\u00020\u000e2\u0006\u0010\u0000\u001a\u00020*8F@FX\u0086\u008e\u0002\u00a2\u0006\u0012\n\u0004\b^\u0010)\u001a\u0004\b,\u0010\\\"\u0004\b.\u0010]\"/\u0010#\u001a\u00020\"*\u00020\u000e2\u0006\u0010\u0000\u001a\u00020\"8F@FX\u0086\u008e\u0002\u00a2\u0006\u0012\n\u0004\ba\u0010)\u001a\u0004\b$\u0010_\"\u0004\b&\u0010`\"/\u0010b\u001a\u00020\u0001*\u00020\u000e2\u0006\u0010\u0000\u001a\u00020\u00018F@FX\u0086\u008e\u0002\u00a2\u0006\u0012\n\u0004\bd\u0010\t\u001a\u0004\bb\u0010\u000f\"\u0004\bc\u0010\u0010\"/\u0010e\u001a\u00020\u0001*\u00020\u000e2\u0006\u0010\u0000\u001a\u00020\u00018F@FX\u0086\u008e\u0002\u00a2\u0006\u0012\n\u0004\bg\u0010\t\u001a\u0004\be\u0010\u000f\"\u0004\bf\u0010\u0010\"/\u0010h\u001a\u00020\u0001*\u00020\u000e2\u0006\u0010\u0000\u001a\u00020\u00018F@FX\u0086\u008e\u0002\u00a2\u0006\u0012\n\u0004\bj\u0010\t\u001a\u0004\bh\u0010\u000f\"\u0004\bi\u0010\u0010\"/\u0010k\u001a\u00020\u0001*\u00020\u000e2\u0006\u0010\u0000\u001a\u00020\u00018F@FX\u0086\u008e\u0002\u00a2\u0006\u0012\n\u0004\bm\u0010\t\u001a\u0004\bk\u0010\u000f\"\u0004\bl\u0010\u0010\"/\u0010>\u001a\u00020\u0001*\u00020\u000e2\u0006\u0010\u0000\u001a\u00020\u00018F@FX\u0086\u008e\u0002\u00a2\u0006\u0012\n\u0004\bn\u0010\t\u001a\u0004\b>\u0010\u000f\"\u0004\b?\u0010\u0010\"/\u0010o\u001a\u00020\u0001*\u00020\u000e2\u0006\u0010\u0000\u001a\u00020\u00018F@FX\u0086\u008e\u0002\u00a2\u0006\u0012\n\u0004\bq\u0010\t\u001a\u0004\bo\u0010\u000f\"\u0004\bp\u0010\u0010\"/\u0010A\u001a\u00020\u0001*\u00020\u000e2\u0006\u0010\u0000\u001a\u00020\u00018F@FX\u0086\u008e\u0002\u00a2\u0006\u0012\n\u0004\br\u0010\t\u001a\u0004\bA\u0010\u000f\"\u0004\bB\u0010\u0010\"/\u0010T\u001a\u00020\u0001*\u00020\u000e2\u0006\u0010\u0000\u001a\u00020\u00018F@FX\u0086\u008e\u0002\u00a2\u0006\u0012\n\u0004\bs\u0010\t\u001a\u0004\bU\u0010\u000f\"\u0004\bV\u0010\u0010\"/\u0010+\u001a\u00020**\u00020\u00122\u0006\u0010\u0000\u001a\u00020*8F@FX\u0086\u008e\u0002\u00a2\u0006\u0012\n\u0004\bv\u0010)\u001a\u0004\b,\u0010t\"\u0004\b.\u0010u\"/\u0010#\u001a\u00020\"*\u00020\u00122\u0006\u0010\u0000\u001a\u00020\"8F@FX\u0086\u008e\u0002\u00a2\u0006\u0012\n\u0004\by\u0010)\u001a\u0004\b$\u0010w\"\u0004\b&\u0010x\"/\u00102\u001a\u00020X*\u00020\u00122\u0006\u0010\u0000\u001a\u00020X8F@FX\u0086\u008e\u0002\u00a2\u0006\u0012\n\u0004\b|\u0010)\u001a\u0004\b3\u0010z\"\u0004\b5\u0010{\"/\u0010}\u001a\u00020\u0001*\u00020\u00122\u0006\u0010\u0000\u001a\u00020\u00018F@FX\u0086\u008e\u0002\u00a2\u0006\u0012\n\u0004\b\u007f\u0010\t\u001a\u0004\b}\u0010\u0013\"\u0004\b~\u0010\u0014\"3\u0010\u0080\u0001\u001a\u00020\u0001*\u00020\u00122\u0006\u0010\u0000\u001a\u00020\u00018F@FX\u0086\u008e\u0002\u00a2\u0006\u0015\n\u0005\b\u0082\u0001\u0010\t\u001a\u0005\b\u0080\u0001\u0010\u0013\"\u0005\b\u0081\u0001\u0010\u0014\"3\u0010\u0083\u0001\u001a\u00020\u0001*\u00020\u00122\u0006\u0010\u0000\u001a\u00020\u00018F@FX\u0086\u008e\u0002\u00a2\u0006\u0015\n\u0005\b\u0085\u0001\u0010\t\u001a\u0005\b\u0083\u0001\u0010\u0013\"\u0005\b\u0084\u0001\u0010\u0014\"3\u0010\u0086\u0001\u001a\u00020\u0001*\u00020\u00122\u0006\u0010\u0000\u001a\u00020\u00018F@FX\u0086\u008e\u0002\u00a2\u0006\u0015\n\u0005\b\u0089\u0001\u0010\t\u001a\u0005\b\u0087\u0001\u0010\u0013\"\u0005\b\u0088\u0001\u0010\u0014\"0\u0010>\u001a\u00020\u0001*\u00020\u00122\u0006\u0010\u0000\u001a\u00020\u00018F@FX\u0086\u008e\u0002\u00a2\u0006\u0013\n\u0005\b\u008a\u0001\u0010\t\u001a\u0004\b>\u0010\u0013\"\u0004\b?\u0010\u0014\"3\u0010\u008b\u0001\u001a\u00020\u0001*\u00020\u00122\u0006\u0010\u0000\u001a\u00020\u00018F@FX\u0086\u008e\u0002\u00a2\u0006\u0015\n\u0005\b\u008d\u0001\u0010\t\u001a\u0005\b\u008b\u0001\u0010\u0013\"\u0005\b\u008c\u0001\u0010\u0014\"0\u0010A\u001a\u00020\u0001*\u00020\u00122\u0006\u0010\u0000\u001a\u00020\u00018F@FX\u0086\u008e\u0002\u00a2\u0006\u0013\n\u0005\b\u008e\u0001\u0010\t\u001a\u0004\bA\u0010\u0013\"\u0004\bB\u0010\u0014\"2\u0010+\u001a\u00020**\u00020\u00162\u0006\u0010\u0000\u001a\u00020*8F@FX\u0086\u008e\u0002\u00a2\u0006\u0015\n\u0005\b\u0091\u0001\u0010)\u001a\u0005\b,\u0010\u008f\u0001\"\u0005\b.\u0010\u0090\u0001\"2\u0010#\u001a\u00020\"*\u00020\u00162\u0006\u0010\u0000\u001a\u00020\"8F@FX\u0086\u008e\u0002\u00a2\u0006\u0015\n\u0005\b\u0094\u0001\u0010)\u001a\u0005\b$\u0010\u0092\u0001\"\u0005\b&\u0010\u0093\u0001\"3\u0010\u0095\u0001\u001a\u00020\u0001*\u00020\u00162\u0006\u0010\u0000\u001a\u00020\u00018F@FX\u0086\u008e\u0002\u00a2\u0006\u0015\n\u0005\b\u0097\u0001\u0010\t\u001a\u0005\b\u0095\u0001\u0010\u0017\"\u0005\b\u0096\u0001\u0010\u0018\"0\u0010>\u001a\u00020\u0001*\u00020\u00162\u0006\u0010\u0000\u001a\u00020\u00018F@FX\u0086\u008e\u0002\u00a2\u0006\u0013\n\u0005\b\u0098\u0001\u0010\t\u001a\u0004\b>\u0010\u0017\"\u0004\b?\u0010\u0018\"0\u0010h\u001a\u00020\u0001*\u00020\u00162\u0006\u0010\u0000\u001a\u00020\u00018F@FX\u0086\u008e\u0002\u00a2\u0006\u0013\n\u0005\b\u0099\u0001\u0010\t\u001a\u0004\bh\u0010\u0017\"\u0004\bi\u0010\u0018\"6\u0010\u009a\u0001\u001a\u00020\u0001*\u00030\u009b\u00012\u0006\u0010\u0000\u001a\u00020\u00018F@FX\u0086\u008e\u0002\u00a2\u0006\u0017\n\u0005\b\u009f\u0001\u0010\t\u001a\u0006\b\u009a\u0001\u0010\u009c\u0001\"\u0006\b\u009d\u0001\u0010\u009e\u0001\"3\u0010o\u001a\u00020\u0001*\u00030\u009b\u00012\u0006\u0010\u0000\u001a\u00020\u00018F@FX\u0086\u008e\u0002\u00a2\u0006\u0015\n\u0005\b\u00a0\u0001\u0010\t\u001a\u0005\bo\u0010\u009c\u0001\"\u0005\bp\u0010\u009e\u0001\"6\u0010\u00a1\u0001\u001a\u00020\u0001*\u00030\u009b\u00012\u0006\u0010\u0000\u001a\u00020\u00018F@FX\u0086\u008e\u0002\u00a2\u0006\u0017\n\u0005\b\u00a3\u0001\u0010\t\u001a\u0006\b\u00a1\u0001\u0010\u009c\u0001\"\u0006\b\u00a2\u0001\u0010\u009e\u0001\"6\u0010\u00a4\u0001\u001a\u00020\u0001*\u00030\u00a5\u00012\u0006\u0010\u0000\u001a\u00020\u00018F@FX\u0086\u008e\u0002\u00a2\u0006\u0017\n\u0005\b\u00a9\u0001\u0010\t\u001a\u0006\b\u00a4\u0001\u0010\u00a6\u0001\"\u0006\b\u00a7\u0001\u0010\u00a8\u0001\"2\u0010+\u001a\u00020**\u00020\u001e2\u0006\u0010\u0000\u001a\u00020*8F@FX\u0086\u008e\u0002\u00a2\u0006\u0015\n\u0005\b\u00ac\u0001\u0010)\u001a\u0005\b,\u0010\u00aa\u0001\"\u0005\b.\u0010\u00ab\u0001\"3\u0010\u00ad\u0001\u001a\u00020\u0001*\u00020\u001a2\u0006\u0010\u0000\u001a\u00020\u00018F@FX\u0086\u008e\u0002\u00a2\u0006\u0015\n\u0005\b\u00b0\u0001\u0010\t\u001a\u0005\b\u00ae\u0001\u0010\u001b\"\u0005\b\u00af\u0001\u0010\u001c\"3\u0010\u00b1\u0001\u001a\u00020\u0001*\u00020\u001a2\u0006\u0010\u0000\u001a\u00020\u00018F@FX\u0086\u008e\u0002\u00a2\u0006\u0015\n\u0005\b\u00b3\u0001\u0010\t\u001a\u0005\b\u00b1\u0001\u0010\u001b\"\u0005\b\u00b2\u0001\u0010\u001c\"3\u0010\u00b4\u0001\u001a\u00020\u0001*\u00020\u001a2\u0006\u0010\u0000\u001a\u00020\u00018F@FX\u0086\u008e\u0002\u00a2\u0006\u0015\n\u0005\b\u00b6\u0001\u0010\t\u001a\u0005\b\u00b4\u0001\u0010\u001b\"\u0005\b\u00b5\u0001\u0010\u001c\">\u0010\u00b7\u0001\u001a\u00020\u0001*\u00030\u00b8\u00012\u0006\u0010\u0000\u001a\u00020\u00018F@FX\u0087\u008e\u0002\u00a2\u0006\u001f\n\u0005\b\u00be\u0001\u0010\t\u0012\u0006\b\u00b9\u0001\u0010\u00ba\u0001\u001a\u0006\b\u00b7\u0001\u0010\u00bb\u0001\"\u0006\b\u00bc\u0001\u0010\u00bd\u0001\">\u0010\u00bf\u0001\u001a\u00020\u0001*\u00030\u00b8\u00012\u0006\u0010\u0000\u001a\u00020\u00018F@FX\u0087\u008e\u0002\u00a2\u0006\u001f\n\u0005\b\u00c2\u0001\u0010\t\u0012\u0006\b\u00c0\u0001\u0010\u00ba\u0001\u001a\u0006\b\u00bf\u0001\u0010\u00bb\u0001\"\u0006\b\u00c1\u0001\u0010\u00bd\u0001\u00a8\u0006\u00c3\u0001"}, d2 = {"<set-?>", "", "hasAnnotations", "Lkotlin/metadata/KmClass;", "getHasAnnotations", "(Lkotlin/metadata/KmClass;)Z", "setHasAnnotations", "(Lkotlin/metadata/KmClass;Z)V", "hasAnnotations$delegate", "Lkotlin/metadata/internal/BooleanFlagDelegate;", "Lkotlin/metadata/KmConstructor;", "(Lkotlin/metadata/KmConstructor;)Z", "(Lkotlin/metadata/KmConstructor;Z)V", "hasAnnotations$delegate$1", "Lkotlin/metadata/KmFunction;", "(Lkotlin/metadata/KmFunction;)Z", "(Lkotlin/metadata/KmFunction;Z)V", "hasAnnotations$delegate$2", "Lkotlin/metadata/KmProperty;", "(Lkotlin/metadata/KmProperty;)Z", "(Lkotlin/metadata/KmProperty;Z)V", "hasAnnotations$delegate$3", "Lkotlin/metadata/KmPropertyAccessorAttributes;", "(Lkotlin/metadata/KmPropertyAccessorAttributes;)Z", "(Lkotlin/metadata/KmPropertyAccessorAttributes;Z)V", "hasAnnotations$delegate$4", "Lkotlin/metadata/KmValueParameter;", "(Lkotlin/metadata/KmValueParameter;)Z", "(Lkotlin/metadata/KmValueParameter;Z)V", "hasAnnotations$delegate$5", "Lkotlin/metadata/KmTypeAlias;", "(Lkotlin/metadata/KmTypeAlias;)Z", "(Lkotlin/metadata/KmTypeAlias;Z)V", "hasAnnotations$delegate$6", "Lkotlin/metadata/Modality;", "modality", "getModality", "(Lkotlin/metadata/KmClass;)Lkotlin/metadata/Modality;", "setModality", "(Lkotlin/metadata/KmClass;Lkotlin/metadata/Modality;)V", "modality$delegate", "Lkotlin/metadata/internal/EnumFlagDelegate;", "Lkotlin/metadata/Visibility;", "visibility", "getVisibility", "(Lkotlin/metadata/KmClass;)Lkotlin/metadata/Visibility;", "setVisibility", "(Lkotlin/metadata/KmClass;Lkotlin/metadata/Visibility;)V", "visibility$delegate", "Lkotlin/metadata/ClassKind;", "kind", "getKind", "(Lkotlin/metadata/KmClass;)Lkotlin/metadata/ClassKind;", "setKind", "(Lkotlin/metadata/KmClass;Lkotlin/metadata/ClassKind;)V", "kind$delegate", "isInner", "setInner", "isInner$delegate", "isData", "setData", "isData$delegate", "isExternal", "setExternal", "isExternal$delegate", "isExpect", "setExpect", "isExpect$delegate", "isValue", "setValue", "isValue$delegate", "isFunInterface", "setFunInterface", "isFunInterface$delegate", "hasEnumEntries", "getHasEnumEntries", "setHasEnumEntries", "hasEnumEntries$delegate", "(Lkotlin/metadata/KmConstructor;)Lkotlin/metadata/Visibility;", "(Lkotlin/metadata/KmConstructor;Lkotlin/metadata/Visibility;)V", "visibility$delegate$1", "isSecondary", "setSecondary", "isSecondary$delegate", "hasNonStableParameterNames", "getHasNonStableParameterNames", "setHasNonStableParameterNames", "hasNonStableParameterNames$delegate", "Lkotlin/metadata/MemberKind;", "(Lkotlin/metadata/KmFunction;)Lkotlin/metadata/MemberKind;", "(Lkotlin/metadata/KmFunction;Lkotlin/metadata/MemberKind;)V", "kind$delegate$1", "(Lkotlin/metadata/KmFunction;)Lkotlin/metadata/Visibility;", "(Lkotlin/metadata/KmFunction;Lkotlin/metadata/Visibility;)V", "visibility$delegate$2", "(Lkotlin/metadata/KmFunction;)Lkotlin/metadata/Modality;", "(Lkotlin/metadata/KmFunction;Lkotlin/metadata/Modality;)V", "modality$delegate$1", "isOperator", "setOperator", "isOperator$delegate", "isInfix", "setInfix", "isInfix$delegate", "isInline", "setInline", "isInline$delegate", "isTailrec", "setTailrec", "isTailrec$delegate", "isExternal$delegate$1", "isSuspend", "setSuspend", "isSuspend$delegate", "isExpect$delegate$1", "hasNonStableParameterNames$delegate$1", "(Lkotlin/metadata/KmProperty;)Lkotlin/metadata/Visibility;", "(Lkotlin/metadata/KmProperty;Lkotlin/metadata/Visibility;)V", "visibility$delegate$3", "(Lkotlin/metadata/KmProperty;)Lkotlin/metadata/Modality;", "(Lkotlin/metadata/KmProperty;Lkotlin/metadata/Modality;)V", "modality$delegate$2", "(Lkotlin/metadata/KmProperty;)Lkotlin/metadata/MemberKind;", "(Lkotlin/metadata/KmProperty;Lkotlin/metadata/MemberKind;)V", "kind$delegate$2", "isVar", "setVar", "isVar$delegate", "isConst", "setConst", "isConst$delegate", "isLateinit", "setLateinit", "isLateinit$delegate", "hasConstant", "getHasConstant", "setHasConstant", "hasConstant$delegate", "isExternal$delegate$2", "isDelegated", "setDelegated", "isDelegated$delegate", "isExpect$delegate$2", "(Lkotlin/metadata/KmPropertyAccessorAttributes;)Lkotlin/metadata/Visibility;", "(Lkotlin/metadata/KmPropertyAccessorAttributes;Lkotlin/metadata/Visibility;)V", "visibility$delegate$4", "(Lkotlin/metadata/KmPropertyAccessorAttributes;)Lkotlin/metadata/Modality;", "(Lkotlin/metadata/KmPropertyAccessorAttributes;Lkotlin/metadata/Modality;)V", "modality$delegate$3", "isNotDefault", "setNotDefault", "isNotDefault$delegate", "isExternal$delegate$3", "isInline$delegate$1", "isNullable", "Lkotlin/metadata/KmType;", "(Lkotlin/metadata/KmType;)Z", "setNullable", "(Lkotlin/metadata/KmType;Z)V", "isNullable$delegate", "isSuspend$delegate$1", "isDefinitelyNonNull", "setDefinitelyNonNull", "isDefinitelyNonNull$delegate", "isReified", "Lkotlin/metadata/KmTypeParameter;", "(Lkotlin/metadata/KmTypeParameter;)Z", "setReified", "(Lkotlin/metadata/KmTypeParameter;Z)V", "isReified$delegate", "(Lkotlin/metadata/KmTypeAlias;)Lkotlin/metadata/Visibility;", "(Lkotlin/metadata/KmTypeAlias;Lkotlin/metadata/Visibility;)V", "visibility$delegate$5", "declaresDefaultValue", "getDeclaresDefaultValue", "setDeclaresDefaultValue", "declaresDefaultValue$delegate", "isCrossinline", "setCrossinline", "isCrossinline$delegate", "isNoinline", "setNoinline", "isNoinline$delegate", "isNegated", "Lkotlin/metadata/KmEffectExpression;", "isNegated$annotations", "(Lkotlin/metadata/KmEffectExpression;)V", "(Lkotlin/metadata/KmEffectExpression;)Z", "setNegated", "(Lkotlin/metadata/KmEffectExpression;Z)V", "isNegated$delegate", "isNullCheckPredicate", "isNullCheckPredicate$annotations", "setNullCheckPredicate", "isNullCheckPredicate$delegate", "kotlin-metadata"}, k = 2, mv = {2, 1, 0}, xi = 48)
public final class C7698i5 {

    public static final Y6 f48779A;

    public static final Y6 f48780B;

    public static final Y6 f48781C;

    public static final Y6 f48782D;

    public static final Y6 f48783E;

    public static final Y6 f48784F;

    public static final C8998pu f48785G;

    public static final C8998pu f48786H;

    public static final C8998pu f48787I;

    public static final Y6 f48788J;

    public static final Y6 f48789K;

    public static final Y6 f48790L;

    public static final Y6 f48791M;

    public static final Y6 f48792N;

    public static final Y6 f48793O;

    public static final Y6 f48794P;

    public static final C8998pu f48795Q;

    public static final C8998pu f48796R;

    public static final Y6 f48797S;

    public static final Y6 f48798T;

    public static final Y6 f48799U;

    public static final Y6 f48800V;

    public static final Y6 f48801W;

    public static final Y6 f48802X;

    public static final Y6 f48803Y;

    public static final C8998pu f48804Z;

    public static final XY[] f48805a;

    public static final Y6 f48806a0;

    public static final Y6 f48807b;

    public static final Y6 f48808b0;

    public static final Y6 f48809c;

    public static final Y6 f48810c0;

    public static final Y6 f48811d;

    public static final Y6 f48812d0;

    public static final Y6 f48813e;

    public static final Y6 f48814e0;

    public static final Y6 f48815f;

    public static final Y6 f48816g;

    public static final Y6 f48817h;

    public static final C8998pu f48818i;

    public static final C8998pu f48819j;

    public static final C8998pu f48820k;

    public static final Y6 f48821l;

    public static final Y6 f48822m;

    public static final Y6 f48823n;

    public static final Y6 f48824o;

    public static final Y6 f48825p;

    public static final Y6 f48826q;

    public static final Y6 f48827r;

    public static final C8998pu f48828s;

    public static final Y6 f48829t;

    public static final Y6 f48830u;

    public static final C8998pu f48831v;

    public static final C8998pu f48832w;

    public static final C8998pu f48833x;

    public static final Y6 f48834y;

    public static final Y6 f48835z;

    static {
        XY xy = new XY(C7698i5.class, "hasAnnotations", "getHasAnnotations(Lkotlin/metadata/KmClass;)Z", 1);
        AbstractC9618te0.f52649a.getClass();
        f48805a = new XY[]{xy, new XY(C7698i5.class, "hasAnnotations", "getHasAnnotations(Lkotlin/metadata/KmConstructor;)Z", 1), new XY(C7698i5.class, "hasAnnotations", "getHasAnnotations(Lkotlin/metadata/KmFunction;)Z", 1), new XY(C7698i5.class, "hasAnnotations", "getHasAnnotations(Lkotlin/metadata/KmProperty;)Z", 1), new XY(C7698i5.class, "hasAnnotations", "getHasAnnotations(Lkotlin/metadata/KmPropertyAccessorAttributes;)Z", 1), new XY(C7698i5.class, "hasAnnotations", "getHasAnnotations(Lkotlin/metadata/KmValueParameter;)Z", 1), new XY(C7698i5.class, "hasAnnotations", "getHasAnnotations(Lkotlin/metadata/KmTypeAlias;)Z", 1), new XY(C7698i5.class, "modality", "getModality(Lkotlin/metadata/KmClass;)Lkotlin/metadata/Modality;", 1), new XY(C7698i5.class, "visibility", "getVisibility(Lkotlin/metadata/KmClass;)Lkotlin/metadata/Visibility;", 1), new XY(C7698i5.class, "kind", "getKind(Lkotlin/metadata/KmClass;)Lkotlin/metadata/ClassKind;", 1), new XY(C7698i5.class, "isInner", "isInner(Lkotlin/metadata/KmClass;)Z", 1), new XY(C7698i5.class, "isData", "isData(Lkotlin/metadata/KmClass;)Z", 1), new XY(C7698i5.class, "isExternal", "isExternal(Lkotlin/metadata/KmClass;)Z", 1), new XY(C7698i5.class, "isExpect", "isExpect(Lkotlin/metadata/KmClass;)Z", 1), new XY(C7698i5.class, "isValue", "isValue(Lkotlin/metadata/KmClass;)Z", 1), new XY(C7698i5.class, "isFunInterface", "isFunInterface(Lkotlin/metadata/KmClass;)Z", 1), new XY(C7698i5.class, "hasEnumEntries", "getHasEnumEntries(Lkotlin/metadata/KmClass;)Z", 1), new XY(C7698i5.class, "visibility", "getVisibility(Lkotlin/metadata/KmConstructor;)Lkotlin/metadata/Visibility;", 1), new XY(C7698i5.class, "isSecondary", "isSecondary(Lkotlin/metadata/KmConstructor;)Z", 1), new XY(C7698i5.class, "hasNonStableParameterNames", "getHasNonStableParameterNames(Lkotlin/metadata/KmConstructor;)Z", 1), new XY(C7698i5.class, "kind", "getKind(Lkotlin/metadata/KmFunction;)Lkotlin/metadata/MemberKind;", 1), new XY(C7698i5.class, "visibility", "getVisibility(Lkotlin/metadata/KmFunction;)Lkotlin/metadata/Visibility;", 1), new XY(C7698i5.class, "modality", "getModality(Lkotlin/metadata/KmFunction;)Lkotlin/metadata/Modality;", 1), new XY(C7698i5.class, "isOperator", "isOperator(Lkotlin/metadata/KmFunction;)Z", 1), new XY(C7698i5.class, "isInfix", "isInfix(Lkotlin/metadata/KmFunction;)Z", 1), new XY(C7698i5.class, "isInline", "isInline(Lkotlin/metadata/KmFunction;)Z", 1), new XY(C7698i5.class, "isTailrec", "isTailrec(Lkotlin/metadata/KmFunction;)Z", 1), new XY(C7698i5.class, "isExternal", "isExternal(Lkotlin/metadata/KmFunction;)Z", 1), new XY(C7698i5.class, "isSuspend", "isSuspend(Lkotlin/metadata/KmFunction;)Z", 1), new XY(C7698i5.class, "isExpect", "isExpect(Lkotlin/metadata/KmFunction;)Z", 1), new XY(C7698i5.class, "hasNonStableParameterNames", "getHasNonStableParameterNames(Lkotlin/metadata/KmFunction;)Z", 1), new XY(C7698i5.class, "visibility", "getVisibility(Lkotlin/metadata/KmProperty;)Lkotlin/metadata/Visibility;", 1), new XY(C7698i5.class, "modality", "getModality(Lkotlin/metadata/KmProperty;)Lkotlin/metadata/Modality;", 1), new XY(C7698i5.class, "kind", "getKind(Lkotlin/metadata/KmProperty;)Lkotlin/metadata/MemberKind;", 1), new XY(C7698i5.class, "isVar", "isVar(Lkotlin/metadata/KmProperty;)Z", 1), new XY(C7698i5.class, "isConst", "isConst(Lkotlin/metadata/KmProperty;)Z", 1), new XY(C7698i5.class, "isLateinit", "isLateinit(Lkotlin/metadata/KmProperty;)Z", 1), new XY(C7698i5.class, "hasConstant", "getHasConstant(Lkotlin/metadata/KmProperty;)Z", 1), new XY(C7698i5.class, "isExternal", "isExternal(Lkotlin/metadata/KmProperty;)Z", 1), new XY(C7698i5.class, "isDelegated", "isDelegated(Lkotlin/metadata/KmProperty;)Z", 1), new XY(C7698i5.class, "isExpect", "isExpect(Lkotlin/metadata/KmProperty;)Z", 1), new XY(C7698i5.class, "visibility", "getVisibility(Lkotlin/metadata/KmPropertyAccessorAttributes;)Lkotlin/metadata/Visibility;", 1), new XY(C7698i5.class, "modality", "getModality(Lkotlin/metadata/KmPropertyAccessorAttributes;)Lkotlin/metadata/Modality;", 1), new XY(C7698i5.class, "isNotDefault", "isNotDefault(Lkotlin/metadata/KmPropertyAccessorAttributes;)Z", 1), new XY(C7698i5.class, "isExternal", "isExternal(Lkotlin/metadata/KmPropertyAccessorAttributes;)Z", 1), new XY(C7698i5.class, "isInline", "isInline(Lkotlin/metadata/KmPropertyAccessorAttributes;)Z", 1), new XY(C7698i5.class, "isNullable", "isNullable(Lkotlin/metadata/KmType;)Z", 1), new XY(C7698i5.class, "isSuspend", "isSuspend(Lkotlin/metadata/KmType;)Z", 1), new XY(C7698i5.class, "isDefinitelyNonNull", "isDefinitelyNonNull(Lkotlin/metadata/KmType;)Z", 1), new XY(C7698i5.class, "isReified", "isReified(Lkotlin/metadata/KmTypeParameter;)Z", 1), new XY(C7698i5.class, "visibility", "getVisibility(Lkotlin/metadata/KmTypeAlias;)Lkotlin/metadata/Visibility;", 1), new XY(C7698i5.class, "declaresDefaultValue", "getDeclaresDefaultValue(Lkotlin/metadata/KmValueParameter;)Z", 1), new XY(C7698i5.class, "isCrossinline", "isCrossinline(Lkotlin/metadata/KmValueParameter;)Z", 1), new XY(C7698i5.class, "isNoinline", "isNoinline(Lkotlin/metadata/KmValueParameter;)Z", 1), new XY(C7698i5.class, "isNegated", "isNegated(Lkotlin/metadata/KmEffectExpression;)Z", 1), new XY(C7698i5.class, "isNullCheckPredicate", "isNullCheckPredicate(Lkotlin/metadata/KmEffectExpression;)Z", 1)};
        f48807b = AbstractC9340rx.a(new XY() {
            @Override
            public final void a(Integer num, Object obj) {
                ((C6417aQ) obj).f46513a = num.intValue();
            }

            @Override
            public final Object b(Object obj) {
                return Integer.valueOf(((C6417aQ) obj).f46513a);
            }
        });
        f48809c = AbstractC9340rx.a(new XY() {
            @Override
            public final void a(Integer num, Object obj) {
                ((C7083eQ) obj).f47674a = num.intValue();
            }

            @Override
            public final Object b(Object obj) {
                return Integer.valueOf(((C7083eQ) obj).f47674a);
            }
        });
        f48811d = AbstractC9340rx.a(new XY() {
            @Override
            public final void a(Integer num, Object obj) {
                ((C8918pQ) obj).f51515a = num.intValue();
            }

            @Override
            public final Object b(Object obj) {
                return Integer.valueOf(((C8918pQ) obj).f51515a);
            }
        });
        f48813e = AbstractC9340rx.a(new XY() {
            @Override
            public final void a(Integer num, Object obj) {
                ((C9919vQ) obj).f53100a = num.intValue();
            }

            @Override
            public final Object b(Object obj) {
                return Integer.valueOf(((C9919vQ) obj).f53100a);
            }
        });
        f48815f = AbstractC9340rx.a(new XY() {
            @Override
            public final void a(Integer num, Object obj) {
                ((C10086wQ) obj).f53499a = num.intValue();
            }

            @Override
            public final Object b(Object obj) {
                return Integer.valueOf(((C10086wQ) obj).f53499a);
            }
        });
        f48816g = AbstractC9340rx.a(new XY() {
            @Override
            public final void a(Integer num, Object obj) {
                ((EQ) obj).f39849a = num.intValue();
            }

            @Override
            public final Object b(Object obj) {
                return Integer.valueOf(((EQ) obj).f39849a);
            }
        });
        f48817h = AbstractC9340rx.a(new XY() {
            @Override
            public final void a(Integer num, Object obj) {
                ((C10587zQ) obj).f54374a = num.intValue();
            }

            @Override
            public final Object b(Object obj) {
                return Integer.valueOf(((C10587zQ) obj).f54374a);
            }
        });
        f48818i = AbstractC9340rx.b(new XY() {
            @Override
            public final void a(Integer num, Object obj) {
                ((C6417aQ) obj).f46513a = num.intValue();
            }

            @Override
            public final Object b(Object obj) {
                return Integer.valueOf(((C6417aQ) obj).f46513a);
            }
        });
        f48819j = AbstractC9340rx.c(new XY() {
            @Override
            public final void a(Integer num, Object obj) {
                ((C6417aQ) obj).f46513a = num.intValue();
            }

            @Override
            public final Object b(Object obj) {
                return Integer.valueOf(((C6417aQ) obj).f46513a);
            }
        });
        W4 w42 = new XY() {
            @Override
            public final void a(Integer num, Object obj) {
                ((C6417aQ) obj).f46513a = num.intValue();
            }

            @Override
            public final Object b(Object obj) {
                return Integer.valueOf(((C6417aQ) obj).f46513a);
            }
        };
        C10175wx c10175wx = AbstractC10509yx.f54222e;
        GJ.b(c10175wx, "CLASS_KIND");
        C8831ou c8831ou = EnumC7613hd.f48625c;
        ArrayList arrayList = new ArrayList(AbstractC6785cf.a(c8831ou));
        C7182f0 c7182f0 = new C7182f0(c8831ou);
        while (c7182f0.hasNext()) {
            arrayList.add(((EnumC7613hd) c7182f0.next()).f48626b);
        }
        f48820k = new C8998pu(w42, c10175wx, c8831ou, arrayList);
        C10008vx c10008vx = AbstractC10509yx.f54223f;
        GJ.b(c10008vx, "IS_INNER");
        C9841ux c9841ux = new C9841ux(c10008vx, 1);
        C8172kx c8172kx = new XY() {
            @Override
            public final void a(Integer num, Object obj) {
                ((C6417aQ) obj).f46513a = num.intValue();
            }

            @Override
            public final Object b(Object obj) {
                return Integer.valueOf(((C6417aQ) obj).f46513a);
            }
        };
        f48821l = new Y6(c8172kx, c9841ux);
        C10008vx c10008vx2 = AbstractC10509yx.f54224g;
        GJ.b(c10008vx2, "IS_DATA");
        f48822m = new Y6(c8172kx, new C9841ux(c10008vx2, 1));
        C10008vx c10008vx3 = AbstractC10509yx.f54225h;
        GJ.b(c10008vx3, "IS_EXTERNAL_CLASS");
        f48823n = new Y6(c8172kx, new C9841ux(c10008vx3, 1));
        C10008vx c10008vx4 = AbstractC10509yx.f54226i;
        GJ.b(c10008vx4, "IS_EXPECT_CLASS");
        f48824o = new Y6(c8172kx, new C9841ux(c10008vx4, 1));
        C10008vx c10008vx5 = AbstractC10509yx.f54227j;
        GJ.b(c10008vx5, "IS_VALUE_CLASS");
        f48825p = new Y6(c8172kx, new C9841ux(c10008vx5, 1));
        C10008vx c10008vx6 = AbstractC10509yx.f54228k;
        GJ.b(c10008vx6, "IS_FUN_INTERFACE");
        f48826q = new Y6(c8172kx, new C9841ux(c10008vx6, 1));
        C10008vx c10008vx7 = AbstractC10509yx.f54229l;
        GJ.b(c10008vx7, "HAS_ENUM_ENTRIES");
        f48827r = new Y6(c8172kx, new C9841ux(c10008vx7, 1));
        f48828s = AbstractC9340rx.c(new XY() {
            @Override
            public final void a(Integer num, Object obj) {
                ((C7083eQ) obj).f47674a = num.intValue();
            }

            @Override
            public final Object b(Object obj) {
                return Integer.valueOf(((C7083eQ) obj).f47674a);
            }
        });
        C10008vx c10008vx8 = AbstractC10509yx.f54230m;
        GJ.b(c10008vx8, "IS_SECONDARY");
        C9841ux c9841ux2 = new C9841ux(c10008vx8, 1);
        C8339lx c8339lx = new XY() {
            @Override
            public final void a(Integer num, Object obj) {
                ((C7083eQ) obj).f47674a = num.intValue();
            }

            @Override
            public final Object b(Object obj) {
                return Integer.valueOf(((C7083eQ) obj).f47674a);
            }
        };
        f48829t = new Y6(c8339lx, c9841ux2);
        C10008vx c10008vx9 = AbstractC10509yx.f54231n;
        GJ.b(c10008vx9, "IS_CONSTRUCTOR_WITH_NON_STABLE_PARAMETER_NAMES");
        f48830u = new Y6(c8339lx, new C9841ux(c10008vx9, 1));
        X4 x42 = new XY() {
            @Override
            public final void a(Integer num, Object obj) {
                ((C8918pQ) obj).f51515a = num.intValue();
            }

            @Override
            public final Object b(Object obj) {
                return Integer.valueOf(((C8918pQ) obj).f51515a);
            }
        };
        C10175wx c10175wx2 = AbstractC10509yx.f54232o;
        GJ.b(c10175wx2, "MEMBER_KIND");
        C8831ou c8831ou2 = HV.f40773c;
        ArrayList arrayList2 = new ArrayList(AbstractC6785cf.a(c8831ou2));
        C7182f0 c7182f02 = new C7182f0(c8831ou2);
        while (c7182f02.hasNext()) {
            arrayList2.add(((HV) c7182f02.next()).f40774b);
        }
        f48831v = new C8998pu(x42, c10175wx2, c8831ou2, arrayList2);
        f48832w = AbstractC9340rx.c(new XY() {
            @Override
            public final void a(Integer num, Object obj) {
                ((C8918pQ) obj).f51515a = num.intValue();
            }

            @Override
            public final Object b(Object obj) {
                return Integer.valueOf(((C8918pQ) obj).f51515a);
            }
        });
        f48833x = AbstractC9340rx.b(new XY() {
            @Override
            public final void a(Integer num, Object obj) {
                ((C8918pQ) obj).f51515a = num.intValue();
            }

            @Override
            public final Object b(Object obj) {
                return Integer.valueOf(((C8918pQ) obj).f51515a);
            }
        });
        C10008vx c10008vx10 = AbstractC10509yx.f54233p;
        GJ.b(c10008vx10, "IS_OPERATOR");
        C9841ux c9841ux3 = new C9841ux(c10008vx10, 1);
        C8506mx c8506mx = new XY() {
            @Override
            public final void a(Integer num, Object obj) {
                ((C8918pQ) obj).f51515a = num.intValue();
            }

            @Override
            public final Object b(Object obj) {
                return Integer.valueOf(((C8918pQ) obj).f51515a);
            }
        };
        f48834y = new Y6(c8506mx, c9841ux3);
        C10008vx c10008vx11 = AbstractC10509yx.f54234q;
        GJ.b(c10008vx11, "IS_INFIX");
        f48835z = new Y6(c8506mx, new C9841ux(c10008vx11, 1));
        C10008vx c10008vx12 = AbstractC10509yx.f54235r;
        GJ.b(c10008vx12, "IS_INLINE");
        f48779A = new Y6(c8506mx, new C9841ux(c10008vx12, 1));
        C10008vx c10008vx13 = AbstractC10509yx.f54236s;
        GJ.b(c10008vx13, "IS_TAILREC");
        f48780B = new Y6(c8506mx, new C9841ux(c10008vx13, 1));
        C10008vx c10008vx14 = AbstractC10509yx.f54237t;
        GJ.b(c10008vx14, "IS_EXTERNAL_FUNCTION");
        f48781C = new Y6(c8506mx, new C9841ux(c10008vx14, 1));
        C10008vx c10008vx15 = AbstractC10509yx.f54238u;
        GJ.b(c10008vx15, "IS_SUSPEND");
        f48782D = new Y6(c8506mx, new C9841ux(c10008vx15, 1));
        C10008vx c10008vx16 = AbstractC10509yx.f54239v;
        GJ.b(c10008vx16, "IS_EXPECT_FUNCTION");
        f48783E = new Y6(c8506mx, new C9841ux(c10008vx16, 1));
        C10008vx c10008vx17 = AbstractC10509yx.f54240w;
        GJ.b(c10008vx17, "IS_FUNCTION_WITH_NON_STABLE_PARAMETER_NAMES");
        f48784F = new Y6(c8506mx, new C9841ux(c10008vx17, 1));
        f48785G = AbstractC9340rx.c(new XY() {
            @Override
            public final void a(Integer num, Object obj) {
                ((C9919vQ) obj).f53100a = num.intValue();
            }

            @Override
            public final Object b(Object obj) {
                return Integer.valueOf(((C9919vQ) obj).f53100a);
            }
        });
        f48786H = AbstractC9340rx.b(new XY() {
            @Override
            public final void a(Integer num, Object obj) {
                ((C9919vQ) obj).f53100a = num.intValue();
            }

            @Override
            public final Object b(Object obj) {
                return Integer.valueOf(((C9919vQ) obj).f53100a);
            }
        });
        V4 v42 = new XY() {
            @Override
            public final void a(Integer num, Object obj) {
                ((C9919vQ) obj).f53100a = num.intValue();
            }

            @Override
            public final Object b(Object obj) {
                return Integer.valueOf(((C9919vQ) obj).f53100a);
            }
        };
        C10175wx c10175wx3 = AbstractC10509yx.f54232o;
        GJ.b(c10175wx3, "MEMBER_KIND");
        C8831ou c8831ou3 = HV.f40773c;
        ArrayList arrayList3 = new ArrayList(AbstractC6785cf.a(c8831ou3));
        C7182f0 c7182f03 = new C7182f0(c8831ou3);
        while (c7182f03.hasNext()) {
            arrayList3.add(((HV) c7182f03.next()).f40774b);
        }
        f48787I = new C8998pu(v42, c10175wx3, c8831ou3, arrayList3);
        C10008vx c10008vx18 = AbstractC10509yx.f54241x;
        GJ.b(c10008vx18, "IS_VAR");
        C9841ux c9841ux4 = new C9841ux(c10008vx18, 1);
        C8840ox c8840ox = C8840ox.f51393h;
        f48788J = new Y6(c8840ox, c9841ux4);
        C10008vx c10008vx19 = AbstractC10509yx.f54203A;
        GJ.b(c10008vx19, "IS_CONST");
        f48789K = new Y6(c8840ox, new C9841ux(c10008vx19, 1));
        C10008vx c10008vx20 = AbstractC10509yx.f54204B;
        GJ.b(c10008vx20, "IS_LATEINIT");
        f48790L = new Y6(c8840ox, new C9841ux(c10008vx20, 1));
        C10008vx c10008vx21 = AbstractC10509yx.f54205C;
        GJ.b(c10008vx21, "HAS_CONSTANT");
        f48791M = new Y6(c8840ox, new C9841ux(c10008vx21, 1));
        C10008vx c10008vx22 = AbstractC10509yx.f54206D;
        GJ.b(c10008vx22, "IS_EXTERNAL_PROPERTY");
        f48792N = new Y6(c8840ox, new C9841ux(c10008vx22, 1));
        C10008vx c10008vx23 = AbstractC10509yx.f54207E;
        GJ.b(c10008vx23, "IS_DELEGATED");
        f48793O = new Y6(c8840ox, new C9841ux(c10008vx23, 1));
        C10008vx c10008vx24 = AbstractC10509yx.f54208F;
        GJ.b(c10008vx24, "IS_EXPECT_PROPERTY");
        f48794P = new Y6(c8840ox, new C9841ux(c10008vx24, 1));
        f48795Q = AbstractC9340rx.c(new XY() {
            @Override
            public final void a(Integer num, Object obj) {
                ((C10086wQ) obj).f53499a = num.intValue();
            }

            @Override
            public final Object b(Object obj) {
                return Integer.valueOf(((C10086wQ) obj).f53499a);
            }
        });
        f48796R = AbstractC9340rx.b(new XY() {
            @Override
            public final void a(Integer num, Object obj) {
                ((C10086wQ) obj).f53499a = num.intValue();
            }

            @Override
            public final Object b(Object obj) {
                return Integer.valueOf(((C10086wQ) obj).f53499a);
            }
        });
        C10008vx c10008vx25 = AbstractC10509yx.f54212J;
        GJ.b(c10008vx25, "IS_NOT_DEFAULT");
        C9841ux c9841ux5 = new C9841ux(c10008vx25, 1);
        C8673nx c8673nx = new XY() {
            @Override
            public final void a(Integer num, Object obj) {
                ((C10086wQ) obj).f53499a = num.intValue();
            }

            @Override
            public final Object b(Object obj) {
                return Integer.valueOf(((C10086wQ) obj).f53499a);
            }
        };
        f48797S = new Y6(c8673nx, c9841ux5);
        C10008vx c10008vx26 = AbstractC10509yx.f54213K;
        GJ.b(c10008vx26, "IS_EXTERNAL_ACCESSOR");
        f48798T = new Y6(c8673nx, new C9841ux(c10008vx26, 1));
        C10008vx c10008vx27 = AbstractC10509yx.f54214L;
        GJ.b(c10008vx27, "IS_INLINE_ACCESSOR");
        f48799U = new Y6(c8673nx, new C9841ux(c10008vx27, 1));
        C9841ux c9841ux6 = new C9841ux(0, 1);
        C9007px c9007px = new XY() {
            @Override
            public final void a(Integer num, Object obj) {
                ((C10420yQ) obj).f54008a = num.intValue();
            }

            @Override
            public final Object b(Object obj) {
                return Integer.valueOf(((C10420yQ) obj).f54008a);
            }
        };
        f48800V = new Y6(c9007px, c9841ux6);
        C10008vx c10008vx28 = AbstractC10509yx.f54218a;
        f48801W = new Y6(c9007px, new C9841ux(1, 1));
        f48802X = new Y6(c9007px, new C9841ux(c10008vx28.f53898a + 1, c10008vx28.f53899b));
        f48803Y = new Y6(new XY() {
            @Override
            public final void a(Integer num, Object obj) {
                ((BQ) obj).f38895a = num.intValue();
            }

            @Override
            public final Object b(Object obj) {
                return Integer.valueOf(((BQ) obj).f38895a);
            }
        }, new C9841ux(0, 1));
        f48804Z = AbstractC9340rx.c(new XY() {
            @Override
            public final void a(Integer num, Object obj) {
                ((C10587zQ) obj).f54374a = num.intValue();
            }

            @Override
            public final Object b(Object obj) {
                return Integer.valueOf(((C10587zQ) obj).f54374a);
            }
        });
        C10008vx c10008vx29 = AbstractC10509yx.f54209G;
        GJ.b(c10008vx29, "DECLARES_DEFAULT_VALUE");
        C9841ux c9841ux7 = new C9841ux(c10008vx29, 1);
        C9174qx c9174qx = new XY() {
            @Override
            public final void a(Integer num, Object obj) {
                ((EQ) obj).f39849a = num.intValue();
            }

            @Override
            public final Object b(Object obj) {
                return Integer.valueOf(((EQ) obj).f39849a);
            }
        };
        f48806a0 = new Y6(c9174qx, c9841ux7);
        C10008vx c10008vx30 = AbstractC10509yx.f54210H;
        GJ.b(c10008vx30, "IS_CROSSINLINE");
        f48808b0 = new Y6(c9174qx, new C9841ux(c10008vx30, 1));
        C10008vx c10008vx31 = AbstractC10509yx.f54211I;
        GJ.b(c10008vx31, "IS_NOINLINE");
        f48810c0 = new Y6(c9174qx, new C9841ux(c10008vx31, 1));
        S4 s42 = new XY() {
            @Override
            public final void a(Integer num, Object obj) {
                ((C7916jQ) obj).f49228a = num.intValue();
            }

            @Override
            public final Object b(Object obj) {
                return Integer.valueOf(((C7916jQ) obj).f49228a);
            }
        };
        C10008vx c10008vx32 = AbstractC10509yx.f54215M;
        GJ.b(c10008vx32, "IS_NEGATED");
        f48812d0 = new Y6(s42, new C9841ux(c10008vx32, 1));
        T4 t42 = new XY() {
            @Override
            public final void a(Integer num, Object obj) {
                ((C7916jQ) obj).f49228a = num.intValue();
            }

            @Override
            public final Object b(Object obj) {
                return Integer.valueOf(((C7916jQ) obj).f49228a);
            }
        };
        C10008vx c10008vx33 = AbstractC10509yx.f54216N;
        GJ.b(c10008vx33, "IS_NULL_CHECK_PREDICATE");
        f48814e0 = new Y6(t42, new C9841ux(c10008vx33, 1));
    }

    public static final boolean a(EQ eq) {
        GJ.c(eq, "<this>");
        return f48806a0.a(eq, f48805a[51]);
    }
}
