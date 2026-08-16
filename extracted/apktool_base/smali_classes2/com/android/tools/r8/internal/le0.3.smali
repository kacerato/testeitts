.class public final Lcom/android/tools/r8/internal/le0;
.super Lcom/android/tools/r8/internal/ZQ;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/ny;


# static fields
.field public static final b:Lcom/android/tools/r8/internal/le0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/le0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/le0;-><init>()V

    sput-object v0, Lcom/android/tools/r8/internal/le0;->b:Lcom/android/tools/r8/internal/le0;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/tools/r8/internal/ZQ;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p1, Ljava/lang/String;

    const-string v0, "it"

    invoke-static {p1, v0}, Lcom/android/tools/r8/internal/GJ;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [C

    const/16 v1, 0x2f

    const/4 v2, 0x0

    aput-char v1, v0, v2

    const/4 v1, 0x2

    invoke-static {p1, v0, v1}, Lcom/android/tools/r8/internal/Iq0;->b(Ljava/lang/String;[CI)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
