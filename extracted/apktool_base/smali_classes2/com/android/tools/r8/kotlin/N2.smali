.class public final synthetic Lcom/android/tools/r8/kotlin/N2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic a:Ljava/lang/StringBuilder;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/StringBuilder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/kotlin/N2;->a:Ljava/lang/StringBuilder;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/kotlin/N2;->a:Ljava/lang/StringBuilder;

    check-cast p1, Ljava/lang/String;

    check-cast p2, Lcom/android/tools/r8/internal/iQ;

    invoke-static {v0, p1, p2}, Lcom/android/tools/r8/kotlin/c0;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Lcom/android/tools/r8/internal/iQ;)V

    return-void
.end method
