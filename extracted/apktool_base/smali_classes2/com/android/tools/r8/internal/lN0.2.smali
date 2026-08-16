.class public final synthetic Lcom/android/tools/r8/internal/lN0;
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

    iput-object p1, p0, Lcom/android/tools/r8/internal/lN0;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/lN0;->b:Ljava/lang/String;

    check-cast p1, Lcom/android/tools/r8/internal/xT;

    invoke-static {v0, p1}, Lcom/android/tools/r8/internal/N60;->a(Ljava/lang/String;Lcom/android/tools/r8/internal/xT;)Ljava/util/stream/Stream;

    move-result-object p1

    return-object p1
.end method
