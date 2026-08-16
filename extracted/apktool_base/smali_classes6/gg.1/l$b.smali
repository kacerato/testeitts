.class public final Lgg/l$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgg/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# static fields
.field public static final synthetic a:Lgg/l$b;

.field public static final b:I = 0x7fffffff

.field public static final c:I = 0x0

.field public static final d:I = -0x1

.field public static final e:I = -0x2

.field public static final f:I = -0x3

.field public static final g:Ljava/lang/String; = "kotlinx.coroutines.channels.defaultBuffer"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final h:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lgg/l$b;

    invoke-direct {v0}, Lgg/l$b;-><init>()V

    sput-object v0, Lgg/l$b;->a:Lgg/l$b;

    const/4 v0, 0x1

    const v1, 0x7ffffffe

    const-string v2, "kotlinx.coroutines.channels.defaultBuffer"

    const/16 v3, 0x40

    invoke-static {v2, v3, v0, v1}, Lmg/W;->b(Ljava/lang/String;III)I

    move-result v0

    sput v0, Lgg/l$b;->h:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    sget v0, Lgg/l$b;->h:I

    return v0
.end method
