.class public final synthetic Lcom/android/tools/r8/naming/J2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Z


# direct methods
.method public synthetic constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/android/tools/r8/naming/J2;->b:Z

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/tools/r8/naming/J2;->b:Z

    check-cast p1, Lcom/android/tools/r8/naming/b$a;

    invoke-static {v0, p1}, Lcom/android/tools/r8/naming/b;->b(ZLcom/android/tools/r8/naming/b$a;)V

    return-void
.end method
