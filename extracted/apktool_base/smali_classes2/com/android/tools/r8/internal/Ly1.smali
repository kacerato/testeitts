.class public final synthetic Lcom/android/tools/r8/internal/Ly1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/Wr0;


# instance fields
.field public final synthetic a:Ljava/lang/StringBuilder;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/StringBuilder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/Ly1;->a:Ljava/lang/StringBuilder;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Ly1;->a:Ljava/lang/StringBuilder;

    check-cast p1, Lcom/android/tools/r8/internal/yo0;

    invoke-static {v0, p1}, Lcom/android/tools/r8/internal/xo0;->a(Ljava/lang/StringBuilder;Lcom/android/tools/r8/internal/yo0;)V

    return-void
.end method
