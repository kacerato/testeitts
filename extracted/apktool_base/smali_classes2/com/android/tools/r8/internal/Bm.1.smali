.class public final enum Lcom/android/tools/r8/internal/Bm;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum b:Lcom/android/tools/r8/internal/Bm;

.field public static final enum c:Lcom/android/tools/r8/internal/Bm;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/android/tools/r8/internal/Bm;

    const/4 v1, 0x0

    const-string v2, "WRAPPER"

    invoke-direct {v0, v1, v2}, Lcom/android/tools/r8/internal/Bm;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/android/tools/r8/internal/Bm;->b:Lcom/android/tools/r8/internal/Bm;

    new-instance v0, Lcom/android/tools/r8/internal/Bm;

    const/4 v1, 0x1

    const-string v2, "VIVIFIED_WRAPPER"

    invoke-direct {v0, v1, v2}, Lcom/android/tools/r8/internal/Bm;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/android/tools/r8/internal/Bm;->c:Lcom/android/tools/r8/internal/Bm;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p2, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/synthesis/S;)Lcom/android/tools/r8/synthesis/S$b;
    .locals 0

    .line 4
    iget-object p0, p0, Lcom/android/tools/r8/synthesis/S;->n:Lcom/android/tools/r8/synthesis/S$b;

    return-object p0
.end method

.method public static synthetic b(Lcom/android/tools/r8/synthesis/S;)Lcom/android/tools/r8/synthesis/S$b;
    .locals 0

    iget-object p0, p0, Lcom/android/tools/r8/synthesis/S;->o:Lcom/android/tools/r8/synthesis/S$b;

    return-object p0
.end method


# virtual methods
.method public final a()Lcom/android/tools/r8/synthesis/I;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/tools/r8/internal/Bm;->b:Lcom/android/tools/r8/internal/Bm;

    if-ne p0, v0, :cond_0

    .line 2
    new-instance v0, Lcom/android/tools/r8/internal/XA0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/XA0;-><init>()V

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Lcom/android/tools/r8/internal/YA0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/YA0;-><init>()V

    return-object v0
.end method
