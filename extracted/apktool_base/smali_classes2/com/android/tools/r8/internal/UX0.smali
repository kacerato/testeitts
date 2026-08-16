.class public final synthetic Lcom/android/tools/r8/internal/UX0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/UX0;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/UX0;->b:Ljava/util/List;

    check-cast p1, Lcom/android/tools/r8/internal/Wa0;

    invoke-static {v0, p1}, Lcom/android/tools/r8/internal/U7;->a(Ljava/util/List;Lcom/android/tools/r8/internal/Wa0;)V

    return-void
.end method
