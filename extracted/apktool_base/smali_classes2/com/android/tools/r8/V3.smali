.class public final synthetic Lcom/android/tools/r8/V3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/R8Command$Builder;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/R8Command$Builder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/V3;->b:Lcom/android/tools/r8/R8Command$Builder;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/V3;->b:Lcom/android/tools/r8/R8Command$Builder;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/BaseCompilerCommand$Builder;->a(I)Lcom/android/tools/r8/BaseCompilerCommand$Builder;

    return-void
.end method
