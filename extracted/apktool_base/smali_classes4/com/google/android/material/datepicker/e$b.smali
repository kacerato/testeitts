.class public Lcom/google/android/material/datepicker/e$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/datepicker/e;->d(J)Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:J

.field public final synthetic c:Lcom/google/android/material/datepicker/e;


# direct methods
.method public constructor <init>(Lcom/google/android/material/datepicker/e;J)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/datepicker/e$b;->c:Lcom/google/android/material/datepicker/e;

    iput-wide p2, p0, Lcom/google/android/material/datepicker/e$b;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/material/datepicker/e$b;->c:Lcom/google/android/material/datepicker/e;

    invoke-static {v0}, Lcom/google/android/material/datepicker/e;->a(Lcom/google/android/material/datepicker/e;)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/datepicker/e$b;->c:Lcom/google/android/material/datepicker/e;

    invoke-static {v1}, Lcom/google/android/material/datepicker/e;->c(Lcom/google/android/material/datepicker/e;)Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/material/datepicker/e$b;->b:J

    invoke-static {v2, v3}, Lcom/google/android/material/datepicker/g;->c(J)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/google/android/material/datepicker/e$b;->c:Lcom/google/android/material/datepicker/e;

    invoke-virtual {v0}, Lcom/google/android/material/datepicker/e;->e()V

    return-void
.end method
