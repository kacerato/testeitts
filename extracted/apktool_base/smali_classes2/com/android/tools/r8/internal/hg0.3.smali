.class public final Lcom/android/tools/r8/internal/hg0;
.super Lcom/android/tools/r8/internal/ZQ;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/ny;


# static fields
.field public static final b:Lcom/android/tools/r8/internal/hg0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/hg0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/hg0;-><init>()V

    sput-object v0, Lcom/android/tools/r8/internal/hg0;->b:Lcom/android/tools/r8/internal/hg0;

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
    .locals 1

    check-cast p1, Lcom/android/tools/r8/internal/ng0;

    const-string v0, "it"

    invoke-static {p1, v0}, Lcom/android/tools/r8/internal/GJ;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/ng0;->a(Z)V

    sget-object p1, Lcom/android/tools/r8/internal/iv0;->a:Lcom/android/tools/r8/internal/iv0;

    return-object p1
.end method
