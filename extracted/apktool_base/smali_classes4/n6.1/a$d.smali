.class public final Ln6/a$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln6/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation


# instance fields
.field public final a:Landroid/widget/TextView;

.field public final b:Landroid/widget/TextView;

.field public final c:Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/CPUProfiler/CPUCoreGraphView;

.field public final d:Landroid/widget/TextView;

.field public final e:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "itemView"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7f09016f

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ln6/a$d;->a:Landroid/widget/TextView;

    const v0, 0x7f090170

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ln6/a$d;->b:Landroid/widget/TextView;

    const v0, 0x7f09016d

    .line 5
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/CPUProfiler/CPUCoreGraphView;

    iput-object v0, p0, Ln6/a$d;->c:Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/CPUProfiler/CPUCoreGraphView;

    const v0, 0x7f09016c

    .line 6
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ln6/a$d;->d:Landroid/widget/TextView;

    const v0, 0x7f09016e

    .line 7
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Ln6/a$d;->e:Landroid/widget/TextView;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/view/View;Ln6/a$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Ln6/a$d;-><init>(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic a(Ln6/a$d;)Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/CPUProfiler/CPUCoreGraphView;
    .locals 0

    iget-object p0, p0, Ln6/a$d;->c:Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/CPUProfiler/CPUCoreGraphView;

    return-object p0
.end method

.method public static synthetic b(Ln6/a$d;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Ln6/a$d;->d:Landroid/widget/TextView;

    return-object p0
.end method

.method public static synthetic c(Ln6/a$d;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Ln6/a$d;->e:Landroid/widget/TextView;

    return-object p0
.end method

.method public static synthetic d(Ln6/a$d;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Ln6/a$d;->a:Landroid/widget/TextView;

    return-object p0
.end method

.method public static synthetic e(Ln6/a$d;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Ln6/a$d;->b:Landroid/widget/TextView;

    return-object p0
.end method
