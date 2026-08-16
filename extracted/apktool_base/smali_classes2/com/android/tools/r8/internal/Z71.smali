.class public final synthetic Lcom/android/tools/r8/internal/Z71;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/Yx;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/internal/cz;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/cz;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/Z71;->a:Lcom/android/tools/r8/internal/cz;

    return-void
.end method


# virtual methods
.method public final forEach(Ljava/util/function/Consumer;)V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Z71;->a:Lcom/android/tools/r8/internal/cz;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/cz;->a(Ljava/util/function/Consumer;)V

    return-void
.end method
