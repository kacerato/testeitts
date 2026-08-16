.class public final Lcom/android/tools/r8/internal/C80;
.super Lcom/android/tools/r8/internal/ZQ;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/ny;


# static fields
.field public static final b:Lcom/android/tools/r8/internal/C80;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/C80;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/C80;-><init>()V

    sput-object v0, Lcom/android/tools/r8/internal/C80;->b:Lcom/android/tools/r8/internal/C80;

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
    .locals 0

    check-cast p1, Lcom/android/tools/r8/internal/hh0;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/hh0;->b()Lcom/android/tools/r8/internal/Zh0;

    move-result-object p1

    return-object p1
.end method
