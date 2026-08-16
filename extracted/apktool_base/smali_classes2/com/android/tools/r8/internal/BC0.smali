.class public final synthetic Lcom/android/tools/r8/internal/BC0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/zT;


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:Lcom/android/tools/r8/shaking/s2;


# direct methods
.method public synthetic constructor <init>(ZLcom/android/tools/r8/shaking/s2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/android/tools/r8/internal/BC0;->a:Z

    iput-object p2, p0, Lcom/android/tools/r8/internal/BC0;->b:Lcom/android/tools/r8/shaking/s2;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;I)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/tools/r8/internal/BC0;->a:Z

    iget-object v1, p0, Lcom/android/tools/r8/internal/BC0;->b:Lcom/android/tools/r8/shaking/s2;

    check-cast p1, Lcom/android/tools/r8/graph/D5;

    invoke-static {v0, v1, p1, p2}, Lcom/android/tools/r8/internal/DM;->a(ZLcom/android/tools/r8/shaking/s2;Lcom/android/tools/r8/graph/D5;I)V

    return-void
.end method
