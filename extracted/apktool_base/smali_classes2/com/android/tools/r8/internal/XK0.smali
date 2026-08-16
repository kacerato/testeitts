.class public final synthetic Lcom/android/tools/r8/internal/XK0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/Kj0;

.field public final synthetic c:Ljava/util/Set;

.field public final synthetic d:Lcom/android/tools/r8/internal/Jj0;

.field public final synthetic e:Lcom/android/tools/r8/internal/C7;

.field public final synthetic f:Ljava/util/List;

.field public final synthetic g:Ljava/util/List;

.field public final synthetic h:Lcom/android/tools/r8/retrace/StackTraceElementProxy;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/Kj0;Ljava/util/Set;Lcom/android/tools/r8/internal/Jj0;Lcom/android/tools/r8/internal/C7;Ljava/util/List;Ljava/util/List;Lcom/android/tools/r8/retrace/StackTraceElementProxy;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/XK0;->b:Lcom/android/tools/r8/internal/Kj0;

    iput-object p2, p0, Lcom/android/tools/r8/internal/XK0;->c:Ljava/util/Set;

    iput-object p3, p0, Lcom/android/tools/r8/internal/XK0;->d:Lcom/android/tools/r8/internal/Jj0;

    iput-object p4, p0, Lcom/android/tools/r8/internal/XK0;->e:Lcom/android/tools/r8/internal/C7;

    iput-object p5, p0, Lcom/android/tools/r8/internal/XK0;->f:Ljava/util/List;

    iput-object p6, p0, Lcom/android/tools/r8/internal/XK0;->g:Ljava/util/List;

    iput-object p7, p0, Lcom/android/tools/r8/internal/XK0;->h:Lcom/android/tools/r8/retrace/StackTraceElementProxy;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 8

    iget-object v0, p0, Lcom/android/tools/r8/internal/XK0;->b:Lcom/android/tools/r8/internal/Kj0;

    iget-object v1, p0, Lcom/android/tools/r8/internal/XK0;->c:Ljava/util/Set;

    iget-object v2, p0, Lcom/android/tools/r8/internal/XK0;->d:Lcom/android/tools/r8/internal/Jj0;

    iget-object v3, p0, Lcom/android/tools/r8/internal/XK0;->e:Lcom/android/tools/r8/internal/C7;

    iget-object v4, p0, Lcom/android/tools/r8/internal/XK0;->f:Ljava/util/List;

    iget-object v5, p0, Lcom/android/tools/r8/internal/XK0;->g:Ljava/util/List;

    iget-object v6, p0, Lcom/android/tools/r8/internal/XK0;->h:Lcom/android/tools/r8/retrace/StackTraceElementProxy;

    move-object v7, p1

    check-cast v7, Lcom/android/tools/r8/retrace/RetraceStackTraceElementProxy;

    invoke-static/range {v0 .. v7}, Lcom/android/tools/r8/internal/Kj0;->b(Lcom/android/tools/r8/internal/Kj0;Ljava/util/Set;Lcom/android/tools/r8/internal/Jj0;Lcom/android/tools/r8/internal/C7;Ljava/util/List;Ljava/util/List;Lcom/android/tools/r8/retrace/StackTraceElementProxy;Lcom/android/tools/r8/retrace/RetraceStackTraceElementProxy;)V

    return-void
.end method
