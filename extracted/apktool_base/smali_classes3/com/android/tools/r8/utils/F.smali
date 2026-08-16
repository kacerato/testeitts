.class public final synthetic Lcom/android/tools/r8/utils/F;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/utils/p;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/utils/p;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/utils/F;->b:Lcom/android/tools/r8/utils/p;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/utils/F;->b:Lcom/android/tools/r8/utils/p;

    check-cast p1, Lcom/android/tools/r8/utils/q;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/utils/p;->a(Lcom/android/tools/r8/utils/q;)V

    return-void
.end method
