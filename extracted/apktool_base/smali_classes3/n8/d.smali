.class public Ln8/d;
.super Ln8/a;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ln8/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ZLjava/lang/String;[Ljava/lang/String;Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "compiled",
            "code",
            "lines",
            "javaMetaInfo"
        }
    .end annotation

    const/4 p2, 0x0

    move v0, p2

    :goto_0
    array-length v1, p3

    if-ge v0, v1, :cond_2

    aget-object v1, p3, v0

    const-string v2, "import java.util.Timer;"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "java.util.Timer"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "import java.util.TimerTask;"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "java.util.TimerTask"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    new-instance p1, Lt8/d;

    invoke-direct {p1}, Lt8/d;-><init>()V

    iput v0, p1, Ld8/e;->c:I

    const-string v1, "Don\'t use java.util.Timer and java.util.TimerTask"

    iput-object v1, p1, Ld8/e;->b:Ljava/lang/String;

    const-string v1, "Java Timer and TimerTask is not synced with game framerate.\nThis will create deep-bugs that are difficult to find the cause of.\n\nCreate a timer using Math.bySecond in your component:\npublic float timer = 0; // global scope\n\nrepeat(){ // the component method\n    timer += Math.bySecond( 1 ); // 1 means \"1 second in 1 second\".\n\n     if(timer >= 5){\n          // 5 seconds have passed;\n          timer = 0;\n     }\n}"

    iput-object v1, p1, Ld8/e;->a:Ljava/lang/String;

    iget-object v1, p4, Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;->d:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move p1, p2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return p1
.end method
