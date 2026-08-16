.class public final synthetic Lcom/android/tools/r8/internal/E81;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/E81;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/tools/r8/internal/E81;->c:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/tools/r8/internal/E81;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/internal/E81;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/tools/r8/internal/E81;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/tools/r8/internal/E81;->d:Ljava/lang/String;

    check-cast p1, Lcom/android/tools/r8/internal/pO;

    invoke-static {v0, v1, v2, p1}, Lcom/android/tools/r8/internal/dO;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/tools/r8/internal/pO;)Lcom/android/tools/r8/internal/FO;

    move-result-object p1

    return-object p1
.end method
