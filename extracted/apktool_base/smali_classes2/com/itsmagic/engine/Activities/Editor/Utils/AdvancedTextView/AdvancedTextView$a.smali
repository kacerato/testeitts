.class public Lcom/itsmagic/engine/Activities/Editor/Utils/AdvancedTextView/AdvancedTextView$a;
.super Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itsmagic/engine/Activities/Editor/Utils/AdvancedTextView/AdvancedTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList<",
        "LTc/c;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lcom/itsmagic/engine/Activities/Editor/Utils/AdvancedTextView/AdvancedTextView;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Activities/Editor/Utils/AdvancedTextView/AdvancedTextView;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/AdvancedTextView/AdvancedTextView$a;->b:Lcom/itsmagic/engine/Activities/Editor/Utils/AdvancedTextView/AdvancedTextView;

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    new-instance p1, LTc/c;

    new-instance v0, Lcom/itsmagic/engine/Activities/Editor/Utils/AdvancedTextView/AdvancedTextView$a$b;

    invoke-direct {v0, p0}, Lcom/itsmagic/engine/Activities/Editor/Utils/AdvancedTextView/AdvancedTextView$a$b;-><init>(Lcom/itsmagic/engine/Activities/Editor/Utils/AdvancedTextView/AdvancedTextView$a;)V

    const-string v1, "\\*\\*\\*"

    invoke-direct {p1, v1, v1, v0}, LTc/c;-><init>(Ljava/lang/String;Ljava/lang/String;LTc/a;)V

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, LTc/c;

    new-instance v0, Lcom/itsmagic/engine/Activities/Editor/Utils/AdvancedTextView/AdvancedTextView$a$c;

    invoke-direct {v0, p0}, Lcom/itsmagic/engine/Activities/Editor/Utils/AdvancedTextView/AdvancedTextView$a$c;-><init>(Lcom/itsmagic/engine/Activities/Editor/Utils/AdvancedTextView/AdvancedTextView$a;)V

    const-string v1, "\\*\\*"

    invoke-direct {p1, v1, v1, v0}, LTc/c;-><init>(Ljava/lang/String;Ljava/lang/String;LTc/a;)V

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, LTc/c;

    new-instance v0, Lcom/itsmagic/engine/Activities/Editor/Utils/AdvancedTextView/AdvancedTextView$a$d;

    invoke-direct {v0, p0}, Lcom/itsmagic/engine/Activities/Editor/Utils/AdvancedTextView/AdvancedTextView$a$d;-><init>(Lcom/itsmagic/engine/Activities/Editor/Utils/AdvancedTextView/AdvancedTextView$a;)V

    const-string v1, "\\*"

    invoke-direct {p1, v1, v1, v0}, LTc/c;-><init>(Ljava/lang/String;Ljava/lang/String;LTc/a;)V

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, LTc/c;

    new-instance v0, Lcom/itsmagic/engine/Activities/Editor/Utils/AdvancedTextView/AdvancedTextView$a$e;

    invoke-direct {v0, p0}, Lcom/itsmagic/engine/Activities/Editor/Utils/AdvancedTextView/AdvancedTextView$a$e;-><init>(Lcom/itsmagic/engine/Activities/Editor/Utils/AdvancedTextView/AdvancedTextView$a;)V

    const-string v1, "\\_\\_"

    invoke-direct {p1, v1, v1, v0}, LTc/c;-><init>(Ljava/lang/String;Ljava/lang/String;LTc/a;)V

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, LTc/c;

    new-instance v0, Lcom/itsmagic/engine/Activities/Editor/Utils/AdvancedTextView/AdvancedTextView$a$f;

    invoke-direct {v0, p0}, Lcom/itsmagic/engine/Activities/Editor/Utils/AdvancedTextView/AdvancedTextView$a$f;-><init>(Lcom/itsmagic/engine/Activities/Editor/Utils/AdvancedTextView/AdvancedTextView$a;)V

    const-string v1, "\\-\\-"

    invoke-direct {p1, v1, v1, v0}, LTc/c;-><init>(Ljava/lang/String;Ljava/lang/String;LTc/a;)V

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, LTc/c;

    new-instance v0, Lcom/itsmagic/engine/Activities/Editor/Utils/AdvancedTextView/AdvancedTextView$a$g;

    invoke-direct {v0, p0}, Lcom/itsmagic/engine/Activities/Editor/Utils/AdvancedTextView/AdvancedTextView$a$g;-><init>(Lcom/itsmagic/engine/Activities/Editor/Utils/AdvancedTextView/AdvancedTextView$a;)V

    const-string v1, "\\-\\_"

    const-string v2, "\\_\\-"

    invoke-direct {p1, v1, v2, v0}, LTc/c;-><init>(Ljava/lang/String;Ljava/lang/String;LTc/a;)V

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, LTc/c;

    new-instance v0, Lcom/itsmagic/engine/Activities/Editor/Utils/AdvancedTextView/AdvancedTextView$a$h;

    invoke-direct {v0, p0}, Lcom/itsmagic/engine/Activities/Editor/Utils/AdvancedTextView/AdvancedTextView$a$h;-><init>(Lcom/itsmagic/engine/Activities/Editor/Utils/AdvancedTextView/AdvancedTextView$a;)V

    invoke-direct {p1, v2, v1, v0}, LTc/c;-><init>(Ljava/lang/String;Ljava/lang/String;LTc/a;)V

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, LTc/c;

    new-instance v0, Lcom/itsmagic/engine/Activities/Editor/Utils/AdvancedTextView/AdvancedTextView$a$i;

    invoke-direct {v0, p0}, Lcom/itsmagic/engine/Activities/Editor/Utils/AdvancedTextView/AdvancedTextView$a$i;-><init>(Lcom/itsmagic/engine/Activities/Editor/Utils/AdvancedTextView/AdvancedTextView$a;)V

    const-string v1, "\\\'color="

    const-string v2, "\\\'\\\'"

    invoke-direct {p1, v1, v2, v0}, LTc/c;-><init>(Ljava/lang/String;Ljava/lang/String;LTc/a;)V

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, LTc/c;

    new-instance v0, Lcom/itsmagic/engine/Activities/Editor/Utils/AdvancedTextView/AdvancedTextView$a$j;

    invoke-direct {v0, p0}, Lcom/itsmagic/engine/Activities/Editor/Utils/AdvancedTextView/AdvancedTextView$a$j;-><init>(Lcom/itsmagic/engine/Activities/Editor/Utils/AdvancedTextView/AdvancedTextView$a;)V

    const-string v1, "\\\'big"

    invoke-direct {p1, v1, v2, v0}, LTc/c;-><init>(Ljava/lang/String;Ljava/lang/String;LTc/a;)V

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, LTc/c;

    new-instance v0, Lcom/itsmagic/engine/Activities/Editor/Utils/AdvancedTextView/AdvancedTextView$a$a;

    invoke-direct {v0, p0}, Lcom/itsmagic/engine/Activities/Editor/Utils/AdvancedTextView/AdvancedTextView$a$a;-><init>(Lcom/itsmagic/engine/Activities/Editor/Utils/AdvancedTextView/AdvancedTextView$a;)V

    const-string v1, "\\\'small"

    invoke-direct {p1, v1, v2, v0}, LTc/c;-><init>(Ljava/lang/String;Ljava/lang/String;LTc/a;)V

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
