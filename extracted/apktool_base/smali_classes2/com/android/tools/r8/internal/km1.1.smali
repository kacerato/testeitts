.class public final synthetic Lcom/android/tools/r8/internal/km1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/ft0;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/internal/n6;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/n6;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/km1;->a:Lcom/android/tools/r8/internal/n6;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/km1;->a:Lcom/android/tools/r8/internal/n6;

    check-cast p1, Ljava/util/Set;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/tools/r8/internal/n6;->a(Ljava/util/Set;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
