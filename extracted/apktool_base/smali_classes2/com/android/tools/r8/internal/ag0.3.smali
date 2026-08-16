.class public final Lcom/android/tools/r8/internal/ag0;
.super Lcom/android/tools/r8/internal/ZQ;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/ny;


# static fields
.field public static final b:Lcom/android/tools/r8/internal/ag0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/ag0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/ag0;-><init>()V

    sput-object v0, Lcom/android/tools/r8/internal/ag0;->b:Lcom/android/tools/r8/internal/ag0;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/tools/r8/internal/ZQ;-><init>(I)V

    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/ng0;)Ljava/lang/String;
    .locals 2

    .line 2
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/ng0;->a()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/android/tools/r8/internal/ng0;

    invoke-static {p1}, Lcom/android/tools/r8/internal/ag0;->a(Lcom/android/tools/r8/internal/ng0;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
