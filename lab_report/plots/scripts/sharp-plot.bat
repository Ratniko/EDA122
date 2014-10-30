For /R %%F in (*.sharpe) do sharpe "%%F" | eval_filter | complement > "%%~nF.dat"

