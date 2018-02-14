# Project example to report a bug

Project to report a **possible** bug on spacemacs `ruby-test-run-at-point` function.

I got this problem when using minitest with the spec syntax.

## rspec

Open `rspec/spec/array_spec.rb` using spacemacs.

Leave your cursor on any spec (it block) and type `SPC m t t` to run `ruby-test-run-at-point`.

Output:

```
-*- mode: compilation; default-directory: "~/Projects/labs/spacemacs-minitest-spec/rspec/" -*-
Comint started at Wed Feb 14 16:32:00

bundle exec rspec -b /home/lucas/Projects/labs/spacemacs-minitest-spec/rspec/spec/array_spec.rb:9
Run options: include {:locations=>{"./spec/array_spec.rb"=>[9]}}
.

Finished in 0.00082 seconds (files took 0.06008 seconds to load)
1 example, 0 failures


Comint finished at Wed Feb 14 16:32:01

```

## minitest

Open `minitest/array_test.rb` using spacemacs.

Leave your cursor on any spec (it block) and type `SPC m t t` to run the `ruby-test-run-at-point`.

Output:

```
-*- mode: compilation; default-directory: "~/Projects/labs/spacemacs-minitest-spec/minitest/" -*-
Comint started at Wed Feb 14 16:32:28

bundle exec ruby -I'lib:test' /home/lucas/Projects/labs/spacemacs-minitest-spec/minitest/array_test.rb --name "/"can be created with a specific size"/"
Run options: --name /can --seed 33009

# Running:



Finished in 0.000926s, 0.0000 runs/s, 0.0000 assertions/s.

0 runs, 0 assertions, 0 failures, 0 errors, 0 skips

Comint finished at Wed Feb 14 16:32:28

```

The correct command to run the test using minitest is:

```
ruby -I test minitest/array_test.rb --name='/Array\#test_\d+_can be created with a specific size$/'
```

Output:

```
Run options: "--name=/Array\\#test_\\d+_can be created with a specific size$/" --seed 30263

# Running:

.

Finished in 0.000814s, 1228.8560 runs/s, 1228.8560 assertions/s.

1 runs, 1 assertions, 0 failures, 0 errors, 0 skips
```

It seems like the `ruby-test-run-at-point` is skiping the describe blocks to build the command.


Thank you =)
