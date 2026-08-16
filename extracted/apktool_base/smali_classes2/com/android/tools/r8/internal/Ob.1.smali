.class public final Lcom/android/tools/r8/internal/Ob;
.super Lcom/android/tools/r8/internal/Sb;
.source "SourceFile"


# static fields
.field public static final c:Lcom/android/tools/r8/internal/Ob;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/Ob;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Ob;-><init>()V

    sput-object v0, Lcom/android/tools/r8/internal/Ob;->c:Lcom/android/tools/r8/internal/Ob;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string v0, "CharMatcher.any()"

    invoke-direct {p0, v0}, Lcom/android/tools/r8/internal/Sb;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final b()Lcom/android/tools/r8/internal/Wb;
    .locals 1

    .line 2
    sget-object v0, Lcom/android/tools/r8/internal/Ub;->c:Lcom/android/tools/r8/internal/Ub;

    return-object v0
.end method

.method public final b(C)Z
    .locals 0

    .line 1
    const/4 p1, 0x1

    return p1
.end method

.method public final negate()Ljava/util/function/Predicate;
    .locals 1

    sget-object v0, Lcom/android/tools/r8/internal/Ub;->c:Lcom/android/tools/r8/internal/Ub;

    return-object v0
.end method
