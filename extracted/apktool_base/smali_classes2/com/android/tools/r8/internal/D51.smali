.class public final synthetic Lcom/android/tools/r8/internal/D51;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/D51;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/D51;->b:Ljava/lang/String;

    check-cast p1, Lcom/android/tools/r8/internal/pO;

    invoke-static {v0, p1}, Lcom/android/tools/r8/internal/bO;->a(Ljava/lang/String;Lcom/android/tools/r8/internal/pO;)Lcom/android/tools/r8/internal/FO;

    move-result-object p1

    return-object p1
.end method
