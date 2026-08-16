.class public LM7/o;
.super LM7/c;
.source "SourceFile"


# instance fields
.field public I:LM7/r;

.field public J:Z

.field public K:Z

.field public L:Z

.field public M:I

.field public N:I

.field public final O:LM7/d;

.field public P:I

.field public Q:I

.field public R:Z

.field public S:Z

.field public T:LAc/b;

.field public U:LAc/b;

.field public V:I

.field public W:Z

.field public X:LAc/b;

.field public Y:I

.field public Z:Z

.field public a0:LAc/b;


# direct methods
.method public constructor <init>(IILM7/c$b;Landroid/content/Context;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "uncheckedIcon",
            "checkedIcon",
            "connector",
            "context"
        }
    .end annotation

    .line 109
    invoke-direct {p0, p1, p3, p4}, LM7/c;-><init>(ILM7/c$b;Landroid/content/Context;)V

    const/4 p3, 0x0

    .line 110
    iput-boolean p3, p0, LM7/o;->J:Z

    .line 111
    iput-boolean p3, p0, LM7/o;->K:Z

    const/4 p4, 0x1

    .line 112
    iput-boolean p4, p0, LM7/o;->L:Z

    const/4 v0, -0x1

    .line 113
    iput v0, p0, LM7/o;->M:I

    .line 114
    iput v0, p0, LM7/o;->N:I

    .line 115
    new-instance v0, LM7/o$a;

    invoke-direct {v0, p0}, LM7/o$a;-><init>(LM7/o;)V

    iput-object v0, p0, LM7/o;->O:LM7/d;

    .line 116
    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->PRIMARY:LAc/b;

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v2

    iput v2, p0, LM7/o;->P:I

    .line 117
    sget-object v2, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->PANEL_TOPBAR:LAc/b;

    invoke-static {v2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v3

    iput v3, p0, LM7/o;->Q:I

    .line 118
    iput-boolean p4, p0, LM7/o;->R:Z

    .line 119
    iput-boolean p4, p0, LM7/o;->S:Z

    .line 120
    iput-object v1, p0, LM7/o;->T:LAc/b;

    .line 121
    iput-object v2, p0, LM7/o;->U:LAc/b;

    .line 122
    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->BUTTON_OUTLINE:LAc/b;

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v2

    iput v2, p0, LM7/o;->V:I

    .line 123
    iput-boolean p4, p0, LM7/o;->W:Z

    .line 124
    iput-object v1, p0, LM7/o;->X:LAc/b;

    .line 125
    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v2

    iput v2, p0, LM7/o;->Y:I

    .line 126
    iput-boolean p4, p0, LM7/o;->Z:Z

    .line 127
    iput-object v1, p0, LM7/o;->a0:LAc/b;

    .line 128
    invoke-super {p0, p3}, LM7/c;->X(Z)V

    .line 129
    invoke-virtual {p0, p1, p2}, LM7/o;->o0(II)V

    .line 130
    invoke-virtual {p0, v0}, LM7/c;->i0(LM7/d;)V

    return-void
.end method

.method public constructor <init>(IILM7/r;LM7/c$b;Landroid/content/Context;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "uncheckedIcon",
            "checkedIcon",
            "listener",
            "connector",
            "context"
        }
    .end annotation

    .line 154
    invoke-direct {p0, p1, p4, p5}, LM7/c;-><init>(ILM7/c$b;Landroid/content/Context;)V

    const/4 p4, 0x0

    .line 155
    iput-boolean p4, p0, LM7/o;->J:Z

    .line 156
    iput-boolean p4, p0, LM7/o;->K:Z

    const/4 p5, 0x1

    .line 157
    iput-boolean p5, p0, LM7/o;->L:Z

    const/4 v0, -0x1

    .line 158
    iput v0, p0, LM7/o;->M:I

    .line 159
    iput v0, p0, LM7/o;->N:I

    .line 160
    new-instance v0, LM7/o$a;

    invoke-direct {v0, p0}, LM7/o$a;-><init>(LM7/o;)V

    iput-object v0, p0, LM7/o;->O:LM7/d;

    .line 161
    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->PRIMARY:LAc/b;

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v2

    iput v2, p0, LM7/o;->P:I

    .line 162
    sget-object v2, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->PANEL_TOPBAR:LAc/b;

    invoke-static {v2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v3

    iput v3, p0, LM7/o;->Q:I

    .line 163
    iput-boolean p5, p0, LM7/o;->R:Z

    .line 164
    iput-boolean p5, p0, LM7/o;->S:Z

    .line 165
    iput-object v1, p0, LM7/o;->T:LAc/b;

    .line 166
    iput-object v2, p0, LM7/o;->U:LAc/b;

    .line 167
    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->BUTTON_OUTLINE:LAc/b;

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v2

    iput v2, p0, LM7/o;->V:I

    .line 168
    iput-boolean p5, p0, LM7/o;->W:Z

    .line 169
    iput-object v1, p0, LM7/o;->X:LAc/b;

    .line 170
    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v2

    iput v2, p0, LM7/o;->Y:I

    .line 171
    iput-boolean p5, p0, LM7/o;->Z:Z

    .line 172
    iput-object v1, p0, LM7/o;->a0:LAc/b;

    .line 173
    invoke-super {p0, p4}, LM7/c;->X(Z)V

    .line 174
    iput-object p3, p0, LM7/o;->I:LM7/r;

    .line 175
    invoke-virtual {p0, p1, p2}, LM7/o;->o0(II)V

    .line 176
    invoke-virtual {p0, v0}, LM7/c;->i0(LM7/d;)V

    return-void
.end method

.method public constructor <init>(IILM7/r;Landroid/content/Context;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "uncheckedIcon",
            "checkedIcon",
            "listener",
            "context"
        }
    .end annotation

    .line 131
    invoke-direct {p0, p1, p4}, LM7/c;-><init>(ILandroid/content/Context;)V

    const/4 p4, 0x0

    .line 132
    iput-boolean p4, p0, LM7/o;->J:Z

    .line 133
    iput-boolean p4, p0, LM7/o;->K:Z

    const/4 v0, 0x1

    .line 134
    iput-boolean v0, p0, LM7/o;->L:Z

    const/4 v1, -0x1

    .line 135
    iput v1, p0, LM7/o;->M:I

    .line 136
    iput v1, p0, LM7/o;->N:I

    .line 137
    new-instance v1, LM7/o$a;

    invoke-direct {v1, p0}, LM7/o$a;-><init>(LM7/o;)V

    iput-object v1, p0, LM7/o;->O:LM7/d;

    .line 138
    sget-object v2, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->PRIMARY:LAc/b;

    invoke-static {v2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v3

    iput v3, p0, LM7/o;->P:I

    .line 139
    sget-object v3, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->PANEL_TOPBAR:LAc/b;

    invoke-static {v3}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v4

    iput v4, p0, LM7/o;->Q:I

    .line 140
    iput-boolean v0, p0, LM7/o;->R:Z

    .line 141
    iput-boolean v0, p0, LM7/o;->S:Z

    .line 142
    iput-object v2, p0, LM7/o;->T:LAc/b;

    .line 143
    iput-object v3, p0, LM7/o;->U:LAc/b;

    .line 144
    sget-object v2, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->BUTTON_OUTLINE:LAc/b;

    invoke-static {v2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v3

    iput v3, p0, LM7/o;->V:I

    .line 145
    iput-boolean v0, p0, LM7/o;->W:Z

    .line 146
    iput-object v2, p0, LM7/o;->X:LAc/b;

    .line 147
    invoke-static {v2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v3

    iput v3, p0, LM7/o;->Y:I

    .line 148
    iput-boolean v0, p0, LM7/o;->Z:Z

    .line 149
    iput-object v2, p0, LM7/o;->a0:LAc/b;

    .line 150
    invoke-super {p0, p4}, LM7/c;->X(Z)V

    .line 151
    iput-object p3, p0, LM7/o;->I:LM7/r;

    .line 152
    invoke-virtual {p0, p1, p2}, LM7/o;->o0(II)V

    .line 153
    invoke-virtual {p0, v1}, LM7/c;->i0(LM7/d;)V

    return-void
.end method

.method public constructor <init>(IILandroid/content/Context;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "uncheckedIcon",
            "checkedIcon",
            "context"
        }
    .end annotation

    .line 87
    invoke-direct {p0, p1, p3}, LM7/c;-><init>(ILandroid/content/Context;)V

    const/4 p3, 0x0

    .line 88
    iput-boolean p3, p0, LM7/o;->J:Z

    .line 89
    iput-boolean p3, p0, LM7/o;->K:Z

    const/4 v0, 0x1

    .line 90
    iput-boolean v0, p0, LM7/o;->L:Z

    const/4 v1, -0x1

    .line 91
    iput v1, p0, LM7/o;->M:I

    .line 92
    iput v1, p0, LM7/o;->N:I

    .line 93
    new-instance v1, LM7/o$a;

    invoke-direct {v1, p0}, LM7/o$a;-><init>(LM7/o;)V

    iput-object v1, p0, LM7/o;->O:LM7/d;

    .line 94
    sget-object v2, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->PRIMARY:LAc/b;

    invoke-static {v2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v3

    iput v3, p0, LM7/o;->P:I

    .line 95
    sget-object v3, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->PANEL_TOPBAR:LAc/b;

    invoke-static {v3}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v4

    iput v4, p0, LM7/o;->Q:I

    .line 96
    iput-boolean v0, p0, LM7/o;->R:Z

    .line 97
    iput-boolean v0, p0, LM7/o;->S:Z

    .line 98
    iput-object v2, p0, LM7/o;->T:LAc/b;

    .line 99
    iput-object v3, p0, LM7/o;->U:LAc/b;

    .line 100
    sget-object v2, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->BUTTON_OUTLINE:LAc/b;

    invoke-static {v2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v3

    iput v3, p0, LM7/o;->V:I

    .line 101
    iput-boolean v0, p0, LM7/o;->W:Z

    .line 102
    iput-object v2, p0, LM7/o;->X:LAc/b;

    .line 103
    invoke-static {v2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v3

    iput v3, p0, LM7/o;->Y:I

    .line 104
    iput-boolean v0, p0, LM7/o;->Z:Z

    .line 105
    iput-object v2, p0, LM7/o;->a0:LAc/b;

    .line 106
    invoke-super {p0, p3}, LM7/c;->X(Z)V

    .line 107
    invoke-virtual {p0, p1, p2}, LM7/o;->o0(II)V

    .line 108
    invoke-virtual {p0, v1}, LM7/c;->i0(LM7/d;)V

    return-void
.end method

.method public constructor <init>(ILM7/c$b;Landroid/content/Context;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "icon",
            "connector",
            "context"
        }
    .end annotation

    .line 22
    invoke-direct {p0, p1, p2, p3}, LM7/c;-><init>(ILM7/c$b;Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 23
    iput-boolean p1, p0, LM7/o;->J:Z

    .line 24
    iput-boolean p1, p0, LM7/o;->K:Z

    const/4 p2, 0x1

    .line 25
    iput-boolean p2, p0, LM7/o;->L:Z

    const/4 p3, -0x1

    .line 26
    iput p3, p0, LM7/o;->M:I

    .line 27
    iput p3, p0, LM7/o;->N:I

    .line 28
    new-instance p3, LM7/o$a;

    invoke-direct {p3, p0}, LM7/o$a;-><init>(LM7/o;)V

    iput-object p3, p0, LM7/o;->O:LM7/d;

    .line 29
    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->PRIMARY:LAc/b;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v1

    iput v1, p0, LM7/o;->P:I

    .line 30
    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->PANEL_TOPBAR:LAc/b;

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v2

    iput v2, p0, LM7/o;->Q:I

    .line 31
    iput-boolean p2, p0, LM7/o;->R:Z

    .line 32
    iput-boolean p2, p0, LM7/o;->S:Z

    .line 33
    iput-object v0, p0, LM7/o;->T:LAc/b;

    .line 34
    iput-object v1, p0, LM7/o;->U:LAc/b;

    .line 35
    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->BUTTON_OUTLINE:LAc/b;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v1

    iput v1, p0, LM7/o;->V:I

    .line 36
    iput-boolean p2, p0, LM7/o;->W:Z

    .line 37
    iput-object v0, p0, LM7/o;->X:LAc/b;

    .line 38
    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v1

    iput v1, p0, LM7/o;->Y:I

    .line 39
    iput-boolean p2, p0, LM7/o;->Z:Z

    .line 40
    iput-object v0, p0, LM7/o;->a0:LAc/b;

    .line 41
    invoke-super {p0, p1}, LM7/c;->X(Z)V

    .line 42
    invoke-virtual {p0, p3}, LM7/c;->i0(LM7/d;)V

    return-void
.end method

.method public constructor <init>(ILM7/r;LM7/c$b;Landroid/content/Context;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "icon",
            "listener",
            "connector",
            "context"
        }
    .end annotation

    .line 65
    invoke-direct {p0, p1, p3, p4}, LM7/c;-><init>(ILM7/c$b;Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 66
    iput-boolean p1, p0, LM7/o;->J:Z

    .line 67
    iput-boolean p1, p0, LM7/o;->K:Z

    const/4 p3, 0x1

    .line 68
    iput-boolean p3, p0, LM7/o;->L:Z

    const/4 p4, -0x1

    .line 69
    iput p4, p0, LM7/o;->M:I

    .line 70
    iput p4, p0, LM7/o;->N:I

    .line 71
    new-instance p4, LM7/o$a;

    invoke-direct {p4, p0}, LM7/o$a;-><init>(LM7/o;)V

    iput-object p4, p0, LM7/o;->O:LM7/d;

    .line 72
    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->PRIMARY:LAc/b;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v1

    iput v1, p0, LM7/o;->P:I

    .line 73
    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->PANEL_TOPBAR:LAc/b;

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v2

    iput v2, p0, LM7/o;->Q:I

    .line 74
    iput-boolean p3, p0, LM7/o;->R:Z

    .line 75
    iput-boolean p3, p0, LM7/o;->S:Z

    .line 76
    iput-object v0, p0, LM7/o;->T:LAc/b;

    .line 77
    iput-object v1, p0, LM7/o;->U:LAc/b;

    .line 78
    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->BUTTON_OUTLINE:LAc/b;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v1

    iput v1, p0, LM7/o;->V:I

    .line 79
    iput-boolean p3, p0, LM7/o;->W:Z

    .line 80
    iput-object v0, p0, LM7/o;->X:LAc/b;

    .line 81
    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v1

    iput v1, p0, LM7/o;->Y:I

    .line 82
    iput-boolean p3, p0, LM7/o;->Z:Z

    .line 83
    iput-object v0, p0, LM7/o;->a0:LAc/b;

    .line 84
    invoke-super {p0, p1}, LM7/c;->X(Z)V

    .line 85
    iput-object p2, p0, LM7/o;->I:LM7/r;

    .line 86
    invoke-virtual {p0, p4}, LM7/c;->i0(LM7/d;)V

    return-void
.end method

.method public constructor <init>(ILM7/r;Landroid/content/Context;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "icon",
            "listener",
            "context"
        }
    .end annotation

    .line 43
    invoke-direct {p0, p1, p3}, LM7/c;-><init>(ILandroid/content/Context;)V

    const/4 p1, 0x0

    .line 44
    iput-boolean p1, p0, LM7/o;->J:Z

    .line 45
    iput-boolean p1, p0, LM7/o;->K:Z

    const/4 p3, 0x1

    .line 46
    iput-boolean p3, p0, LM7/o;->L:Z

    const/4 v0, -0x1

    .line 47
    iput v0, p0, LM7/o;->M:I

    .line 48
    iput v0, p0, LM7/o;->N:I

    .line 49
    new-instance v0, LM7/o$a;

    invoke-direct {v0, p0}, LM7/o$a;-><init>(LM7/o;)V

    iput-object v0, p0, LM7/o;->O:LM7/d;

    .line 50
    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->PRIMARY:LAc/b;

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v2

    iput v2, p0, LM7/o;->P:I

    .line 51
    sget-object v2, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->PANEL_TOPBAR:LAc/b;

    invoke-static {v2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v3

    iput v3, p0, LM7/o;->Q:I

    .line 52
    iput-boolean p3, p0, LM7/o;->R:Z

    .line 53
    iput-boolean p3, p0, LM7/o;->S:Z

    .line 54
    iput-object v1, p0, LM7/o;->T:LAc/b;

    .line 55
    iput-object v2, p0, LM7/o;->U:LAc/b;

    .line 56
    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->BUTTON_OUTLINE:LAc/b;

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v2

    iput v2, p0, LM7/o;->V:I

    .line 57
    iput-boolean p3, p0, LM7/o;->W:Z

    .line 58
    iput-object v1, p0, LM7/o;->X:LAc/b;

    .line 59
    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v2

    iput v2, p0, LM7/o;->Y:I

    .line 60
    iput-boolean p3, p0, LM7/o;->Z:Z

    .line 61
    iput-object v1, p0, LM7/o;->a0:LAc/b;

    .line 62
    invoke-super {p0, p1}, LM7/c;->X(Z)V

    .line 63
    iput-object p2, p0, LM7/o;->I:LM7/r;

    .line 64
    invoke-virtual {p0, v0}, LM7/c;->i0(LM7/d;)V

    return-void
.end method

.method public constructor <init>(ILandroid/content/Context;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "icon",
            "context"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, LM7/c;-><init>(ILandroid/content/Context;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, LM7/o;->J:Z

    .line 3
    iput-boolean p1, p0, LM7/o;->K:Z

    const/4 p2, 0x1

    .line 4
    iput-boolean p2, p0, LM7/o;->L:Z

    const/4 v0, -0x1

    .line 5
    iput v0, p0, LM7/o;->M:I

    .line 6
    iput v0, p0, LM7/o;->N:I

    .line 7
    new-instance v0, LM7/o$a;

    invoke-direct {v0, p0}, LM7/o$a;-><init>(LM7/o;)V

    iput-object v0, p0, LM7/o;->O:LM7/d;

    .line 8
    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->PRIMARY:LAc/b;

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v2

    iput v2, p0, LM7/o;->P:I

    .line 9
    sget-object v2, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->PANEL_TOPBAR:LAc/b;

    invoke-static {v2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v3

    iput v3, p0, LM7/o;->Q:I

    .line 10
    iput-boolean p2, p0, LM7/o;->R:Z

    .line 11
    iput-boolean p2, p0, LM7/o;->S:Z

    .line 12
    iput-object v1, p0, LM7/o;->T:LAc/b;

    .line 13
    iput-object v2, p0, LM7/o;->U:LAc/b;

    .line 14
    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->BUTTON_OUTLINE:LAc/b;

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v2

    iput v2, p0, LM7/o;->V:I

    .line 15
    iput-boolean p2, p0, LM7/o;->W:Z

    .line 16
    iput-object v1, p0, LM7/o;->X:LAc/b;

    .line 17
    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v2

    iput v2, p0, LM7/o;->Y:I

    .line 18
    iput-boolean p2, p0, LM7/o;->Z:Z

    .line 19
    iput-object v1, p0, LM7/o;->a0:LAc/b;

    .line 20
    invoke-super {p0, p1}, LM7/c;->X(Z)V

    .line 21
    invoke-virtual {p0, v0}, LM7/c;->i0(LM7/d;)V

    return-void
.end method

.method public static synthetic n0(LM7/o;)LM7/r;
    .locals 0

    iget-object p0, p0, LM7/o;->I:LM7/r;

    return-object p0
.end method


# virtual methods
.method public A0(I)LM7/o;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "checkedColor"
        }
    .end annotation

    iput p1, p0, LM7/o;->P:I

    const/4 p1, 0x0

    iput-boolean p1, p0, LM7/o;->R:Z

    const/4 p1, 0x0

    iput-object p1, p0, LM7/o;->T:LAc/b;

    invoke-virtual {p0}, LM7/o;->Q0()V

    return-object p0
.end method

.method public B0(LAc/b;)LM7/o;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "checkedColorTag"
        }
    .end annotation

    iput-object p1, p0, LM7/o;->T:LAc/b;

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result p1

    iput p1, p0, LM7/o;->P:I

    const/4 p1, 0x1

    iput-boolean p1, p0, LM7/o;->R:Z

    :cond_0
    invoke-virtual {p0}, LM7/o;->Q0()V

    return-object p0
.end method

.method public C0(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)LM7/o;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "checkedColor"
        }
    .end annotation

    if-eqz p1, :cond_0

    iget p1, p1, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->intColor:I

    iput p1, p0, LM7/o;->P:I

    const/4 p1, 0x1

    iput-boolean p1, p0, LM7/o;->R:Z

    const/4 p1, 0x0

    iput-object p1, p0, LM7/o;->T:LAc/b;

    :cond_0
    invoke-virtual {p0}, LM7/o;->Q0()V

    return-object p0
.end method

.method public D0(I)LM7/o;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "checkedOutlineColor"
        }
    .end annotation

    iput p1, p0, LM7/o;->Y:I

    const/4 p1, 0x0

    iput-boolean p1, p0, LM7/o;->Z:Z

    const/4 p1, 0x0

    iput-object p1, p0, LM7/o;->a0:LAc/b;

    invoke-virtual {p0}, LM7/o;->Q0()V

    return-object p0
.end method

.method public E0(LAc/b;)LM7/o;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "checkedOutlineColorTag"
        }
    .end annotation

    iput-object p1, p0, LM7/o;->a0:LAc/b;

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result p1

    iput p1, p0, LM7/o;->Y:I

    const/4 p1, 0x1

    iput-boolean p1, p0, LM7/o;->Z:Z

    :cond_0
    invoke-virtual {p0}, LM7/o;->Q0()V

    return-object p0
.end method

.method public F0(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)LM7/o;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "checkedOutlineColor"
        }
    .end annotation

    if-eqz p1, :cond_0

    iget p1, p1, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->intColor:I

    iput p1, p0, LM7/o;->Y:I

    const/4 p1, 0x1

    iput-boolean p1, p0, LM7/o;->Z:Z

    const/4 p1, 0x0

    iput-object p1, p0, LM7/o;->a0:LAc/b;

    :cond_0
    invoke-virtual {p0}, LM7/o;->Q0()V

    return-object p0
.end method

.method public G0(I)LM7/o;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "outlineColor"
        }
    .end annotation

    iput p1, p0, LM7/o;->V:I

    const/4 p1, 0x0

    iput-boolean p1, p0, LM7/o;->W:Z

    const/4 p1, 0x0

    iput-object p1, p0, LM7/o;->X:LAc/b;

    invoke-virtual {p0}, LM7/o;->Q0()V

    return-object p0
.end method

.method public H0(LAc/b;)LM7/o;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "outlineColorTag"
        }
    .end annotation

    iput-object p1, p0, LM7/o;->X:LAc/b;

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result p1

    iput p1, p0, LM7/o;->V:I

    const/4 p1, 0x1

    iput-boolean p1, p0, LM7/o;->W:Z

    :cond_0
    invoke-virtual {p0}, LM7/o;->Q0()V

    return-object p0
.end method

.method public I0(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)LM7/o;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "outlineColor"
        }
    .end annotation

    if-eqz p1, :cond_0

    iget p1, p1, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->intColor:I

    iput p1, p0, LM7/o;->V:I

    const/4 p1, 0x1

    iput-boolean p1, p0, LM7/o;->W:Z

    const/4 p1, 0x0

    iput-object p1, p0, LM7/o;->X:LAc/b;

    :cond_0
    invoke-virtual {p0}, LM7/o;->Q0()V

    return-object p0
.end method

.method public J0(Z)LM7/o;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "paintButtonOnToggle"
        }
    .end annotation

    iput-boolean p1, p0, LM7/o;->L:Z

    invoke-virtual {p0}, LM7/o;->Q0()V

    return-object p0
.end method

.method public K0(II)LM7/o;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "uncheckedIcon",
            "checkedIcon"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, LM7/o;->o0(II)V

    invoke-virtual {p0}, LM7/o;->Q0()V

    return-object p0
.end method

.method public L0(LM7/r;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    iput-object p1, p0, LM7/o;->I:LM7/r;

    return-void
.end method

.method public M0(I)LM7/o;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uncheckedColor"
        }
    .end annotation

    iput p1, p0, LM7/o;->Q:I

    const/4 p1, 0x0

    iput-boolean p1, p0, LM7/o;->S:Z

    const/4 p1, 0x0

    iput-object p1, p0, LM7/o;->U:LAc/b;

    invoke-virtual {p0}, LM7/o;->Q0()V

    return-object p0
.end method

.method public N0(LAc/b;)LM7/o;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uncheckedColorTag"
        }
    .end annotation

    iput-object p1, p0, LM7/o;->U:LAc/b;

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result p1

    iput p1, p0, LM7/o;->Q:I

    const/4 p1, 0x1

    iput-boolean p1, p0, LM7/o;->S:Z

    :cond_0
    invoke-virtual {p0}, LM7/o;->Q0()V

    return-object p0
.end method

.method public O0(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)LM7/o;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uncheckedColor"
        }
    .end annotation

    if-eqz p1, :cond_0

    iget p1, p1, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->intColor:I

    iput p1, p0, LM7/o;->Q:I

    const/4 p1, 0x1

    iput-boolean p1, p0, LM7/o;->S:Z

    const/4 p1, 0x0

    iput-object p1, p0, LM7/o;->U:LAc/b;

    :cond_0
    invoke-virtual {p0}, LM7/o;->Q0()V

    return-object p0
.end method

.method public P0(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isFromUserAction"
        }
    .end annotation

    iget-boolean v0, p0, LM7/o;->J:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0, p1}, LM7/o;->y0(ZZ)LM7/o;

    return-void
.end method

.method public final Q0()V
    .locals 2

    iget-boolean v0, p0, LM7/o;->K:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, LM7/o;->J:Z

    if-eqz v0, :cond_0

    iget v0, p0, LM7/o;->N:I

    goto :goto_0

    :cond_0
    iget v0, p0, LM7/o;->M:I

    :goto_0
    invoke-super {p0, v0}, LM7/c;->Z(I)LM7/c;

    :cond_1
    iget-boolean v0, p0, LM7/o;->L:Z

    if-nez v0, :cond_2

    return-void

    :cond_2
    iget-boolean v0, p0, LM7/o;->J:Z

    if-eqz v0, :cond_3

    iget v0, p0, LM7/o;->P:I

    iget-boolean v1, p0, LM7/o;->R:Z

    invoke-super {p0, v0, v1}, LM7/c;->R(IZ)LM7/c;

    iget v0, p0, LM7/o;->Y:I

    iget-boolean v1, p0, LM7/o;->Z:Z

    invoke-virtual {p0, v0, v1}, LM7/o;->x(IZ)V

    goto :goto_1

    :cond_3
    iget v0, p0, LM7/o;->Q:I

    iget-boolean v1, p0, LM7/o;->S:Z

    invoke-super {p0, v0, v1}, LM7/c;->R(IZ)LM7/c;

    iget v0, p0, LM7/o;->V:I

    iget-boolean v1, p0, LM7/o;->W:Z

    invoke-virtual {p0, v0, v1}, LM7/o;->x(IZ)V

    :goto_1
    return-void
.end method

.method public a(Landroid/widget/LinearLayout;Landroid/content/Context;Landroid/view/LayoutInflater;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "parent",
            "context",
            "layoutInflater"
        }
    .end annotation

    invoke-super {p0, p1, p2, p3}, LM7/c;->a(Landroid/widget/LinearLayout;Landroid/content/Context;Landroid/view/LayoutInflater;)V

    invoke-virtual {p0}, LM7/o;->Q0()V

    return-void
.end method

.method public bridge synthetic j0(I)LM7/c;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "outlineColor"
        }
    .end annotation

    invoke-virtual {p0, p1}, LM7/o;->G0(I)LM7/o;

    move-result-object p1

    return-object p1
.end method

.method public k()V
    .locals 2

    invoke-super {p0}, LM7/c;->k()V

    iget-object v0, p0, LM7/o;->T:LAc/b;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v0

    iput v0, p0, LM7/o;->P:I

    iput-boolean v1, p0, LM7/o;->R:Z

    :cond_0
    iget-object v0, p0, LM7/o;->U:LAc/b;

    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v0

    iput v0, p0, LM7/o;->Q:I

    iput-boolean v1, p0, LM7/o;->S:Z

    :cond_1
    iget-object v0, p0, LM7/o;->X:LAc/b;

    if-eqz v0, :cond_2

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v0

    iput v0, p0, LM7/o;->V:I

    iput-boolean v1, p0, LM7/o;->W:Z

    :cond_2
    iget-object v0, p0, LM7/o;->a0:LAc/b;

    if-eqz v0, :cond_3

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v0

    iput v0, p0, LM7/o;->Y:I

    iput-boolean v1, p0, LM7/o;->Z:Z

    :cond_3
    invoke-virtual {p0}, LM7/o;->Q0()V

    return-void
.end method

.method public bridge synthetic k0(LAc/b;)LM7/c;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "outlineColorTag"
        }
    .end annotation

    invoke-virtual {p0, p1}, LM7/o;->H0(LAc/b;)LM7/o;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic l0(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)LM7/c;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "outlineColor"
        }
    .end annotation

    invoke-virtual {p0, p1}, LM7/o;->I0(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)LM7/o;

    move-result-object p1

    return-object p1
.end method

.method public final o0(II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "uncheckedIcon",
            "checkedIcon"
        }
    .end annotation

    iput p1, p0, LM7/o;->M:I

    iput p2, p0, LM7/o;->N:I

    const/4 p1, 0x1

    iput-boolean p1, p0, LM7/o;->K:Z

    const/4 p1, 0x0

    iput-boolean p1, p0, LM7/o;->L:Z

    return-void
.end method

.method public p0()I
    .locals 1

    iget v0, p0, LM7/o;->P:I

    return v0
.end method

.method public q0()I
    .locals 1

    iget v0, p0, LM7/o;->Y:I

    return v0
.end method

.method public r0()I
    .locals 1

    iget v0, p0, LM7/o;->N:I

    return v0
.end method

.method public s0()LM7/r;
    .locals 1

    iget-object v0, p0, LM7/o;->I:LM7/r;

    return-object v0
.end method

.method public t0()I
    .locals 1

    iget v0, p0, LM7/o;->Q:I

    return v0
.end method

.method public u0()I
    .locals 1

    iget v0, p0, LM7/o;->M:I

    return v0
.end method

.method public v0()Z
    .locals 1

    iget-boolean v0, p0, LM7/o;->J:Z

    return v0
.end method

.method public w0()Z
    .locals 1

    iget-boolean v0, p0, LM7/o;->L:Z

    return v0
.end method

.method public final x(IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "color",
            "isDirect"
        }
    .end annotation

    if-eqz p2, :cond_0

    new-instance p2, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-direct {p2, p1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>(I)V

    invoke-super {p0, p2}, LM7/c;->l0(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)LM7/c;

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, LM7/c;->j0(I)LM7/c;

    :goto_0
    return-void
.end method

.method public x0(Z)LM7/o;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "checked"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, LM7/o;->z0(ZZZ)V

    return-object p0
.end method

.method public y0(ZZ)LM7/o;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "checked",
            "isFromUserAction"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0, p2}, LM7/o;->z0(ZZZ)V

    return-object p0
.end method

.method public z0(ZZZ)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "checked",
            "notifyListener",
            "isFromUserAction"
        }
    .end annotation

    iget-boolean v0, p0, LM7/o;->J:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, LM7/o;->J:Z

    invoke-virtual {p0}, LM7/o;->Q0()V

    iget-object v1, p0, LM7/o;->I:LM7/r;

    if-eqz v1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p0}, LM7/g;->e()Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, LM7/c;->l:Landroid/content/Context;

    move v2, p1

    move-object v5, p0

    move v6, p3

    invoke-interface/range {v1 .. v6}, LM7/r;->b(ZLandroid/view/View;Landroid/content/Context;LM7/o;Z)V

    :cond_0
    return-void
.end method
