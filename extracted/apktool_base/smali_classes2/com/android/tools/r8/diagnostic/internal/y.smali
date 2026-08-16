.class public final synthetic Lcom/android/tools/r8/diagnostic/internal/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Ljava/lang/StringBuilder;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/StringBuilder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/diagnostic/internal/y;->b:Ljava/lang/StringBuilder;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/diagnostic/internal/y;->b:Ljava/lang/StringBuilder;

    check-cast p1, Lcom/android/tools/r8/diagnostic/MissingClassInfo;

    invoke-static {v0, p1}, Lcom/android/tools/r8/diagnostic/internal/k;->a(Ljava/lang/StringBuilder;Lcom/android/tools/r8/diagnostic/MissingClassInfo;)V

    return-void
.end method
