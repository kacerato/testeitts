.class public final Lcom/android/tools/r8/internal/ne0;
.super Lcom/android/tools/r8/internal/ZQ;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/ny;


# static fields
.field public static final b:Lcom/android/tools/r8/internal/ne0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/ne0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/ne0;-><init>()V

    sput-object v0, Lcom/android/tools/r8/internal/ne0;->b:Lcom/android/tools/r8/internal/ne0;

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

    check-cast p1, Ljava/util/List;

    const-string v0, "<name for destructuring parameter 0>"

    invoke-static {p1, v0}, Lcom/android/tools/r8/internal/GJ;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    new-instance v1, Lcom/android/tools/r8/internal/p50;

    const/16 v2, 0x2d

    invoke-static {v0, v2}, Lcom/android/tools/r8/internal/Iq0;->c(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/android/tools/r8/internal/lg0;->I:Lcom/android/tools/r8/internal/nC;

    invoke-virtual {v2, v0}, Lcom/android/tools/r8/internal/nC;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/lg0;

    const/16 v2, 0x2e

    invoke-static {p1, v2}, Lcom/android/tools/r8/internal/Iq0;->c(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v0, p1}, Lcom/android/tools/r8/internal/p50;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1
.end method
