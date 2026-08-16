.class synthetic Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$android$tools$r8$keepanno$proto$KeepSpecProtos$Constraint$ConstraintOneofCase:[I

.field static final synthetic $SwitchMap$com$android$tools$r8$keepanno$proto$KeepSpecProtos$Context$ContextOneofCase:[I

.field static final synthetic $SwitchMap$com$android$tools$r8$keepanno$proto$KeepSpecProtos$Declaration$DeclOneofCase:[I

.field static final synthetic $SwitchMap$com$android$tools$r8$keepanno$proto$KeepSpecProtos$ItemPattern$ItemOneofCase:[I

.field static final synthetic $SwitchMap$com$android$tools$r8$keepanno$proto$KeepSpecProtos$MemberPattern$MemberOneofCase:[I

.field static final synthetic $SwitchMap$com$android$tools$r8$keepanno$proto$KeepSpecProtos$MethodReturnTypePattern$ReturnTypeOneofCase:[I

.field static final synthetic $SwitchMap$com$android$tools$r8$keepanno$proto$KeepSpecProtos$StringPattern$PatternOneofCase:[I

.field static final synthetic $SwitchMap$com$android$tools$r8$keepanno$proto$KeepSpecProtos$TypePattern$TypeOneofCase:[I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    invoke-static {}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$TypeOneofCase;->values()[Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$TypeOneofCase;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$1;->$SwitchMap$com$android$tools$r8$keepanno$proto$KeepSpecProtos$TypePattern$TypeOneofCase:[I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$TypeOneofCase;->PRIMITIVE:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$TypeOneofCase;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x2

    :try_start_1
    sget-object v2, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$1;->$SwitchMap$com$android$tools$r8$keepanno$proto$KeepSpecProtos$TypePattern$TypeOneofCase:[I

    sget-object v3, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$TypeOneofCase;->ARRAY:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$TypeOneofCase;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 v2, 0x3

    :try_start_2
    sget-object v3, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$1;->$SwitchMap$com$android$tools$r8$keepanno$proto$KeepSpecProtos$TypePattern$TypeOneofCase:[I

    sget-object v4, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$TypeOneofCase;->CLASS_PATTERN:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$TypeOneofCase;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    const/4 v3, 0x4

    :try_start_3
    sget-object v4, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$1;->$SwitchMap$com$android$tools$r8$keepanno$proto$KeepSpecProtos$TypePattern$TypeOneofCase:[I

    sget-object v5, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$TypeOneofCase;->TYPEONEOF_NOT_SET:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$TypeOneofCase;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    invoke-static {}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodReturnTypePattern$ReturnTypeOneofCase;->values()[Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodReturnTypePattern$ReturnTypeOneofCase;

    move-result-object v4

    array-length v4, v4

    new-array v4, v4, [I

    sput-object v4, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$1;->$SwitchMap$com$android$tools$r8$keepanno$proto$KeepSpecProtos$MethodReturnTypePattern$ReturnTypeOneofCase:[I

    :try_start_4
    sget-object v5, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodReturnTypePattern$ReturnTypeOneofCase;->VOID_TYPE:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodReturnTypePattern$ReturnTypeOneofCase;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v1, v4, v5
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v4, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$1;->$SwitchMap$com$android$tools$r8$keepanno$proto$KeepSpecProtos$MethodReturnTypePattern$ReturnTypeOneofCase:[I

    sget-object v5, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodReturnTypePattern$ReturnTypeOneofCase;->SOME_TYPE:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodReturnTypePattern$ReturnTypeOneofCase;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v0, v4, v5
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :try_start_6
    sget-object v4, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$1;->$SwitchMap$com$android$tools$r8$keepanno$proto$KeepSpecProtos$MethodReturnTypePattern$ReturnTypeOneofCase:[I

    sget-object v5, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodReturnTypePattern$ReturnTypeOneofCase;->RETURNTYPEONEOF_NOT_SET:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodReturnTypePattern$ReturnTypeOneofCase;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v2, v4, v5
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    invoke-static {}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPattern$MemberOneofCase;->values()[Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPattern$MemberOneofCase;

    move-result-object v4

    array-length v4, v4

    new-array v4, v4, [I

    sput-object v4, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$1;->$SwitchMap$com$android$tools$r8$keepanno$proto$KeepSpecProtos$MemberPattern$MemberOneofCase:[I

    :try_start_7
    sget-object v5, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPattern$MemberOneofCase;->GENERAL_MEMBER:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPattern$MemberOneofCase;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v1, v4, v5
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    :try_start_8
    sget-object v4, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$1;->$SwitchMap$com$android$tools$r8$keepanno$proto$KeepSpecProtos$MemberPattern$MemberOneofCase:[I

    sget-object v5, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPattern$MemberOneofCase;->FIELD_MEMBER:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPattern$MemberOneofCase;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v0, v4, v5
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    :catch_8
    :try_start_9
    sget-object v4, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$1;->$SwitchMap$com$android$tools$r8$keepanno$proto$KeepSpecProtos$MemberPattern$MemberOneofCase:[I

    sget-object v5, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPattern$MemberOneofCase;->METHOD_MEMBER:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPattern$MemberOneofCase;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v2, v4, v5
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    :catch_9
    :try_start_a
    sget-object v4, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$1;->$SwitchMap$com$android$tools$r8$keepanno$proto$KeepSpecProtos$MemberPattern$MemberOneofCase:[I

    sget-object v5, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPattern$MemberOneofCase;->MEMBERONEOF_NOT_SET:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPattern$MemberOneofCase;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    :catch_a
    invoke-static {}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$StringPattern$PatternOneofCase;->values()[Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$StringPattern$PatternOneofCase;

    move-result-object v4

    array-length v4, v4

    new-array v4, v4, [I

    sput-object v4, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$1;->$SwitchMap$com$android$tools$r8$keepanno$proto$KeepSpecProtos$StringPattern$PatternOneofCase:[I

    :try_start_b
    sget-object v5, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$StringPattern$PatternOneofCase;->EXACT:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$StringPattern$PatternOneofCase;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v1, v4, v5
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_b

    :catch_b
    :try_start_c
    sget-object v4, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$1;->$SwitchMap$com$android$tools$r8$keepanno$proto$KeepSpecProtos$StringPattern$PatternOneofCase:[I

    sget-object v5, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$StringPattern$PatternOneofCase;->INEXACT:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$StringPattern$PatternOneofCase;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v0, v4, v5
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_c

    :catch_c
    :try_start_d
    sget-object v4, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$1;->$SwitchMap$com$android$tools$r8$keepanno$proto$KeepSpecProtos$StringPattern$PatternOneofCase:[I

    sget-object v5, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$StringPattern$PatternOneofCase;->PATTERNONEOF_NOT_SET:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$StringPattern$PatternOneofCase;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v2, v4, v5
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_d

    :catch_d
    invoke-static {}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ItemPattern$ItemOneofCase;->values()[Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ItemPattern$ItemOneofCase;

    move-result-object v4

    array-length v4, v4

    new-array v4, v4, [I

    sput-object v4, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$1;->$SwitchMap$com$android$tools$r8$keepanno$proto$KeepSpecProtos$ItemPattern$ItemOneofCase:[I

    :try_start_e
    sget-object v5, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ItemPattern$ItemOneofCase;->CLASS_ITEM:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ItemPattern$ItemOneofCase;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v1, v4, v5
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_e

    :catch_e
    :try_start_f
    sget-object v4, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$1;->$SwitchMap$com$android$tools$r8$keepanno$proto$KeepSpecProtos$ItemPattern$ItemOneofCase:[I

    sget-object v5, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ItemPattern$ItemOneofCase;->MEMBER_ITEM:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ItemPattern$ItemOneofCase;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v0, v4, v5
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_f

    :catch_f
    :try_start_10
    sget-object v4, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$1;->$SwitchMap$com$android$tools$r8$keepanno$proto$KeepSpecProtos$ItemPattern$ItemOneofCase:[I

    sget-object v5, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ItemPattern$ItemOneofCase;->ITEMONEOF_NOT_SET:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ItemPattern$ItemOneofCase;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v2, v4, v5
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_10

    :catch_10
    invoke-static {}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Constraint$ConstraintOneofCase;->values()[Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Constraint$ConstraintOneofCase;

    move-result-object v4

    array-length v4, v4

    new-array v4, v4, [I

    sput-object v4, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$1;->$SwitchMap$com$android$tools$r8$keepanno$proto$KeepSpecProtos$Constraint$ConstraintOneofCase:[I

    :try_start_11
    sget-object v5, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Constraint$ConstraintOneofCase;->ELEMENT:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Constraint$ConstraintOneofCase;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v1, v4, v5
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_11

    :catch_11
    :try_start_12
    sget-object v4, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$1;->$SwitchMap$com$android$tools$r8$keepanno$proto$KeepSpecProtos$Constraint$ConstraintOneofCase:[I

    sget-object v5, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Constraint$ConstraintOneofCase;->ANNOTATION:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Constraint$ConstraintOneofCase;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v0, v4, v5
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_12

    :catch_12
    :try_start_13
    sget-object v4, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$1;->$SwitchMap$com$android$tools$r8$keepanno$proto$KeepSpecProtos$Constraint$ConstraintOneofCase:[I

    sget-object v5, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Constraint$ConstraintOneofCase;->CONSTRAINTONEOF_NOT_SET:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Constraint$ConstraintOneofCase;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v2, v4, v5
    :try_end_13
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_13} :catch_13

    :catch_13
    invoke-static {}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Context$ContextOneofCase;->values()[Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Context$ContextOneofCase;

    move-result-object v4

    array-length v4, v4

    new-array v4, v4, [I

    sput-object v4, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$1;->$SwitchMap$com$android$tools$r8$keepanno$proto$KeepSpecProtos$Context$ContextOneofCase:[I

    :try_start_14
    sget-object v5, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Context$ContextOneofCase;->CLASS_DESC:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Context$ContextOneofCase;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v1, v4, v5
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_14} :catch_14

    :catch_14
    :try_start_15
    sget-object v4, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$1;->$SwitchMap$com$android$tools$r8$keepanno$proto$KeepSpecProtos$Context$ContextOneofCase:[I

    sget-object v5, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Context$ContextOneofCase;->METHOD_DESC:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Context$ContextOneofCase;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v0, v4, v5
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_15} :catch_15

    :catch_15
    :try_start_16
    sget-object v4, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$1;->$SwitchMap$com$android$tools$r8$keepanno$proto$KeepSpecProtos$Context$ContextOneofCase:[I

    sget-object v5, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Context$ContextOneofCase;->FIELD_DESC:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Context$ContextOneofCase;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v2, v4, v5
    :try_end_16
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16 .. :try_end_16} :catch_16

    :catch_16
    :try_start_17
    sget-object v4, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$1;->$SwitchMap$com$android$tools$r8$keepanno$proto$KeepSpecProtos$Context$ContextOneofCase:[I

    sget-object v5, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Context$ContextOneofCase;->CONTEXTONEOF_NOT_SET:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Context$ContextOneofCase;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_17} :catch_17

    :catch_17
    invoke-static {}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Declaration$DeclOneofCase;->values()[Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Declaration$DeclOneofCase;

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [I

    sput-object v3, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$1;->$SwitchMap$com$android$tools$r8$keepanno$proto$KeepSpecProtos$Declaration$DeclOneofCase:[I

    :try_start_18
    sget-object v4, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Declaration$DeclOneofCase;->EDGE:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Declaration$DeclOneofCase;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v1, v3, v4
    :try_end_18
    .catch Ljava/lang/NoSuchFieldError; {:try_start_18 .. :try_end_18} :catch_18

    :catch_18
    :try_start_19
    sget-object v1, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$1;->$SwitchMap$com$android$tools$r8$keepanno$proto$KeepSpecProtos$Declaration$DeclOneofCase:[I

    sget-object v3, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Declaration$DeclOneofCase;->CHECK:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Declaration$DeclOneofCase;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v0, v1, v3
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_19 .. :try_end_19} :catch_19

    :catch_19
    :try_start_1a
    sget-object v0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$1;->$SwitchMap$com$android$tools$r8$keepanno$proto$KeepSpecProtos$Declaration$DeclOneofCase:[I

    sget-object v1, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Declaration$DeclOneofCase;->DECLONEOF_NOT_SET:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Declaration$DeclOneofCase;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_1a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1a .. :try_end_1a} :catch_1a

    :catch_1a
    return-void
.end method
