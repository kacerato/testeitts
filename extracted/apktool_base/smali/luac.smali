.class public Lluac;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final usage:Ljava/lang/String; = "usage: java -cp luaj-jse.jar luac [options] [filenames].\nAvailable options are:\n  -        process stdin\n  -l       list\n  -o name  output to file \'name\' (default is \"luac.out\")\n  -p       parse only\n  -s       strip debug information\n  -e       little endian format for numbers\n  -i<n>    number format \'n\', (n=0,1 or 4, default=0)\n  -v       show version information\n  -c enc  \tuse the supplied encoding \'enc\' for input files\n  --       stop handling options\n"

.field private static final version:Ljava/lang/String; = "Luaj-jse 3.0.1Copyright (C) 2009 luaj.org"


# instance fields
.field private encoding:Ljava/lang/String;

.field private list:Z

.field private littleendian:Z

.field private numberformat:I

.field private output:Ljava/lang/String;

.field private parseonly:Z

.field private processing:Z

.field private stripdebug:Z

.field private versioninfo:Z


# direct methods
.method private constructor <init>([Ljava/lang/String;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lluac;->list:Z

    const-string v1, "luac.out"

    iput-object v1, p0, Lluac;->output:Ljava/lang/String;

    iput-boolean v0, p0, Lluac;->parseonly:Z

    iput-boolean v0, p0, Lluac;->stripdebug:Z

    iput-boolean v0, p0, Lluac;->littleendian:Z

    iput v0, p0, Lluac;->numberformat:I

    iput-boolean v0, p0, Lluac;->versioninfo:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lluac;->processing:Z

    const/4 v2, 0x0

    iput-object v2, p0, Lluac;->encoding:Ljava/lang/String;

    move v2, v0

    :goto_0
    :try_start_0
    array-length v3, p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v4, 0x6f

    const/16 v5, 0x63

    const/16 v6, 0x2d

    const-string v7, "-"

    if-ge v2, v3, :cond_10

    :try_start_1
    iget-boolean v3, p0, Lluac;->processing:Z

    if-eqz v3, :cond_f

    aget-object v3, p1, v2

    invoke-virtual {v3, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    goto/16 :goto_1

    :cond_0
    aget-object v3, p1, v2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-gt v3, v1, :cond_1

    goto/16 :goto_1

    :cond_1
    aget-object v3, p1, v2

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/4 v7, 0x2

    if-eq v3, v6, :cond_d

    if-eq v3, v5, :cond_b

    const/16 v5, 0x65

    if-eq v3, v5, :cond_a

    const/16 v5, 0x69

    if-eq v3, v5, :cond_8

    const/16 v5, 0x6c

    if-eq v3, v5, :cond_7

    const/16 v5, 0x73

    if-eq v3, v5, :cond_6

    const/16 v5, 0x76

    if-eq v3, v5, :cond_5

    if-eq v3, v4, :cond_3

    const/16 v4, 0x70

    if-eq v3, v4, :cond_2

    invoke-static {}, Lluac;->usageExit()V

    goto :goto_1

    :catch_0
    move-exception p1

    goto/16 :goto_6

    :cond_2
    iput-boolean v1, p0, Lluac;->parseonly:Z

    goto :goto_1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    array-length v3, p1

    if-lt v2, v3, :cond_4

    invoke-static {}, Lluac;->usageExit()V

    :cond_4
    aget-object v3, p1, v2

    iput-object v3, p0, Lluac;->output:Ljava/lang/String;

    goto :goto_1

    :cond_5
    iput-boolean v1, p0, Lluac;->versioninfo:Z

    goto :goto_1

    :cond_6
    iput-boolean v1, p0, Lluac;->stripdebug:Z

    goto :goto_1

    :cond_7
    iput-boolean v1, p0, Lluac;->list:Z

    goto :goto_1

    :cond_8
    aget-object v3, p1, v2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-gt v3, v7, :cond_9

    invoke-static {}, Lluac;->usageExit()V

    :cond_9
    aget-object v3, p1, v2

    invoke-virtual {v3, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lluac;->numberformat:I

    goto :goto_1

    :cond_a
    iput-boolean v1, p0, Lluac;->littleendian:Z

    goto :goto_1

    :cond_b
    add-int/lit8 v2, v2, 0x1

    array-length v3, p1

    if-lt v2, v3, :cond_c

    invoke-static {}, Lluac;->usageExit()V

    :cond_c
    aget-object v3, p1, v2

    iput-object v3, p0, Lluac;->encoding:Ljava/lang/String;

    goto :goto_1

    :cond_d
    aget-object v3, p1, v2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v7, :cond_e

    invoke-static {}, Lluac;->usageExit()V

    :cond_e
    iput-boolean v0, p0, Lluac;->processing:Z

    :cond_f
    :goto_1
    add-int/2addr v2, v1

    goto/16 :goto_0

    :cond_10
    iget-boolean v2, p0, Lluac;->versioninfo:Z

    if-eqz v2, :cond_11

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "Luaj-jse 3.0.1Copyright (C) 2009 luaj.org"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_11
    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v3, p0, Lluac;->output:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    invoke-static {}, Lorg/luaj/vm2/lib/jse/JsePlatform;->standardGlobals()Lorg/luaj/vm2/Globals;

    move-result-object v3

    iput-boolean v1, p0, Lluac;->processing:Z

    move v8, v0

    :goto_2
    array-length v9, p1

    if-ge v8, v9, :cond_17

    iget-boolean v9, p0, Lluac;->processing:Z

    if-eqz v9, :cond_16

    aget-object v9, p1, v8

    invoke-virtual {v9, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_12

    goto :goto_3

    :cond_12
    aget-object v9, p1, v8

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-gt v9, v1, :cond_13

    sget-object v9, Ljava/lang/System;->in:Ljava/io/InputStream;

    const-string v10, "=stdin"

    invoke-direct {p0, v3, v9, v10, v2}, Lluac;->processScript(Lorg/luaj/vm2/Globals;Ljava/io/InputStream;Ljava/lang/String;Ljava/io/OutputStream;)V

    goto :goto_4

    :catchall_0
    move-exception p1

    goto :goto_5

    :cond_13
    aget-object v9, p1, v8

    invoke-virtual {v9, v1}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-eq v9, v6, :cond_15

    if-eq v9, v5, :cond_14

    if-eq v9, v4, :cond_14

    goto :goto_4

    :cond_14
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    :cond_15
    iput-boolean v0, p0, Lluac;->processing:Z

    goto :goto_4

    :cond_16
    :goto_3
    aget-object v9, p1, v8

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x4

    invoke-virtual {v9, v0, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/io/FileInputStream;

    aget-object v11, p1, v8

    invoke-direct {v10, v11}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v3, v10, v9, v2}, Lluac;->processScript(Lorg/luaj/vm2/Globals;Ljava/io/InputStream;Ljava/lang/String;Ljava/io/OutputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_4
    add-int/2addr v8, v1

    goto :goto_2

    :cond_17
    :try_start_3
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    goto :goto_7

    :goto_5
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    throw p1
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :goto_6
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 p1, -0x2

    invoke-static {p1}, Ljava/lang/System;->exit(I)V

    :goto_7
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lluac;

    invoke-direct {v0, p0}, Lluac;-><init>([Ljava/lang/String;)V

    return-void
.end method

.method private processScript(Lorg/luaj/vm2/Globals;Ljava/io/InputStream;Ljava/lang/String;Ljava/io/OutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, p2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object p2, p0, Lluac;->encoding:Ljava/lang/String;

    if-eqz p2, :cond_0

    new-instance p2, Ljava/io/InputStreamReader;

    iget-object v1, p0, Lluac;->encoding:Ljava/lang/String;

    invoke-direct {p2, v0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-virtual {p1, p2, p3}, Lorg/luaj/vm2/Globals;->compilePrototype(Ljava/io/Reader;Ljava/lang/String;)Lorg/luaj/vm2/Prototype;

    move-result-object p1

    goto :goto_0

    :catchall_0
    move-exception p1

    move-object p2, v0

    goto :goto_3

    :catch_0
    move-exception p1

    move-object p2, v0

    goto :goto_1

    :cond_0
    invoke-virtual {p1, v0, p3}, Lorg/luaj/vm2/Globals;->compilePrototype(Ljava/io/InputStream;Ljava/lang/String;)Lorg/luaj/vm2/Prototype;

    move-result-object p1

    :goto_0
    iget-boolean p2, p0, Lluac;->list:Z

    if-eqz p2, :cond_1

    invoke-static {p1}, Lorg/luaj/vm2/Print;->printCode(Lorg/luaj/vm2/Prototype;)V

    :cond_1
    iget-boolean p2, p0, Lluac;->parseonly:Z

    if-nez p2, :cond_2

    iget-boolean p2, p0, Lluac;->stripdebug:Z

    iget p3, p0, Lluac;->numberformat:I

    iget-boolean v1, p0, Lluac;->littleendian:Z

    invoke-static {p1, p4, p2, p3, v1}, Lorg/luaj/vm2/compiler/DumpState;->dump(Lorg/luaj/vm2/Prototype;Ljava/io/OutputStream;ZIZ)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    goto :goto_2

    :catchall_1
    move-exception p1

    goto :goto_3

    :catch_1
    move-exception p1

    :goto_1
    :try_start_2
    sget-object p3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p1, p3}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-virtual {p2}, Ljava/io/InputStream;->close()V

    :goto_2
    return-void

    :goto_3
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V

    throw p1
.end method

.method private static usageExit()V
    .locals 2

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "usage: java -cp luaj-jse.jar luac [options] [filenames].\nAvailable options are:\n  -        process stdin\n  -l       list\n  -o name  output to file \'name\' (default is \"luac.out\")\n  -p       parse only\n  -s       strip debug information\n  -e       little endian format for numbers\n  -i<n>    number format \'n\', (n=0,1 or 4, default=0)\n  -v       show version information\n  -c enc  \tuse the supplied encoding \'enc\' for input files\n  --       stop handling options\n"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    return-void
.end method
