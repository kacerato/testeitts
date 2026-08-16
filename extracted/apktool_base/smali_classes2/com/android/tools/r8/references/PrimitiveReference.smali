.class public abstract Lcom/android/tools/r8/references/PrimitiveReference;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/references/TypeReference;


# static fields
.field static final a:Lcom/android/tools/r8/references/a;

.field static final b:Lcom/android/tools/r8/references/b;

.field static final c:Lcom/android/tools/r8/references/c;

.field static final d:Lcom/android/tools/r8/references/d;

.field static final e:Lcom/android/tools/r8/references/e;

.field static final f:Lcom/android/tools/r8/references/f;

.field static final g:Lcom/android/tools/r8/references/g;

.field static final h:Lcom/android/tools/r8/references/h;

.field static final synthetic i:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/tools/r8/references/a;

    invoke-direct {v0}, Lcom/android/tools/r8/references/a;-><init>()V

    sput-object v0, Lcom/android/tools/r8/references/PrimitiveReference;->a:Lcom/android/tools/r8/references/a;

    new-instance v0, Lcom/android/tools/r8/references/b;

    invoke-direct {v0}, Lcom/android/tools/r8/references/b;-><init>()V

    sput-object v0, Lcom/android/tools/r8/references/PrimitiveReference;->b:Lcom/android/tools/r8/references/b;

    new-instance v0, Lcom/android/tools/r8/references/c;

    invoke-direct {v0}, Lcom/android/tools/r8/references/c;-><init>()V

    sput-object v0, Lcom/android/tools/r8/references/PrimitiveReference;->c:Lcom/android/tools/r8/references/c;

    new-instance v0, Lcom/android/tools/r8/references/d;

    invoke-direct {v0}, Lcom/android/tools/r8/references/d;-><init>()V

    sput-object v0, Lcom/android/tools/r8/references/PrimitiveReference;->d:Lcom/android/tools/r8/references/d;

    new-instance v0, Lcom/android/tools/r8/references/e;

    invoke-direct {v0}, Lcom/android/tools/r8/references/e;-><init>()V

    sput-object v0, Lcom/android/tools/r8/references/PrimitiveReference;->e:Lcom/android/tools/r8/references/e;

    new-instance v0, Lcom/android/tools/r8/references/f;

    invoke-direct {v0}, Lcom/android/tools/r8/references/f;-><init>()V

    sput-object v0, Lcom/android/tools/r8/references/PrimitiveReference;->f:Lcom/android/tools/r8/references/f;

    new-instance v0, Lcom/android/tools/r8/references/g;

    invoke-direct {v0}, Lcom/android/tools/r8/references/g;-><init>()V

    sput-object v0, Lcom/android/tools/r8/references/PrimitiveReference;->g:Lcom/android/tools/r8/references/g;

    new-instance v0, Lcom/android/tools/r8/references/h;

    invoke-direct {v0}, Lcom/android/tools/r8/references/h;-><init>()V

    sput-object v0, Lcom/android/tools/r8/references/PrimitiveReference;->h:Lcom/android/tools/r8/references/h;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/tools/r8/references/i;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/tools/r8/references/PrimitiveReference;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/android/tools/r8/references/PrimitiveReference;
    .locals 3

    sget-boolean v0, Lcom/android/tools/r8/references/PrimitiveReference;->i:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x46

    if-eq v0, v1, :cond_6

    const/16 v1, 0x53

    if-eq v0, v1, :cond_5

    const/16 v1, 0x5a

    if-eq v0, v1, :cond_4

    const/16 v1, 0x49

    if-eq v0, v1, :cond_3

    const/16 v1, 0x4a

    if-eq v0, v1, :cond_2

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lcom/android/tools/r8/internal/Jv0;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid primitive descriptor: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    sget-object p0, Lcom/android/tools/r8/references/PrimitiveReference;->h:Lcom/android/tools/r8/references/h;

    return-object p0

    :pswitch_1
    sget-object p0, Lcom/android/tools/r8/references/PrimitiveReference;->c:Lcom/android/tools/r8/references/c;

    return-object p0

    :pswitch_2
    sget-object p0, Lcom/android/tools/r8/references/PrimitiveReference;->b:Lcom/android/tools/r8/references/b;

    return-object p0

    :cond_2
    sget-object p0, Lcom/android/tools/r8/references/PrimitiveReference;->g:Lcom/android/tools/r8/references/g;

    return-object p0

    :cond_3
    sget-object p0, Lcom/android/tools/r8/references/PrimitiveReference;->e:Lcom/android/tools/r8/references/e;

    return-object p0

    :cond_4
    sget-object p0, Lcom/android/tools/r8/references/PrimitiveReference;->a:Lcom/android/tools/r8/references/a;

    return-object p0

    :cond_5
    sget-object p0, Lcom/android/tools/r8/references/PrimitiveReference;->d:Lcom/android/tools/r8/references/d;

    return-object p0

    :cond_6
    sget-object p0, Lcom/android/tools/r8/references/PrimitiveReference;->f:Lcom/android/tools/r8/references/f;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x42
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public asPrimitive()Lcom/android/tools/r8/references/PrimitiveReference;
    .locals 0

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 0

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public abstract getDescriptor()Ljava/lang/String;
.end method

.method public hashCode()I
    .locals 1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isPrimitive()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
