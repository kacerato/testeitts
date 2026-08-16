.class public final Lcom/android/tools/r8/internal/Aj0;
.super Lcom/android/tools/r8/internal/ZQ;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/ny;


# static fields
.field public static final b:Lcom/android/tools/r8/internal/Aj0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/Aj0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Aj0;-><init>()V

    sput-object v0, Lcom/android/tools/r8/internal/Aj0;->b:Lcom/android/tools/r8/internal/Aj0;

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

    iget-object p1, p1, Lcom/android/tools/r8/internal/ng0;->c:Lcom/android/tools/r8/internal/lg0;

    sget-object v0, Lcom/android/tools/r8/internal/lg0;->h:Lcom/android/tools/r8/internal/lg0;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/android/tools/r8/internal/lg0;->z:Lcom/android/tools/r8/internal/lg0;

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
