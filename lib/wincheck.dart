String checkWin(List<String> slots){


  if (slots[0] == slots[1] && slots[1] == slots[2] && slots[0] != ' '){
    if (slots[0] == 'X'){
      // player X wins
      return 'X';
    }
    else if (slots[0] == 'O') {
      //player O wins
      return 'O';

    }
  }
  else if (slots[0] == slots[4] && slots[4] == slots[8] && slots[0] != ' '){
    if (slots[0] == 'X'){
      // player X wins
      return 'X';

    }
    else if (slots[0] == 'O'){
      //player O wins
      return 'O';

    }
  }
  else if (slots[0] == slots[3] && slots[3] == slots[6] && slots[0] != ' '){
    if (slots[0] == 'X'){
      // player X wins
      return 'X';

    }
    else if (slots[0] == 'O'){
      //player O wins
      return 'O';

    }
  }
  else if (slots[1] == slots[4] && slots[4] == slots[7] && slots[1] != ' '){
    if (slots[1] == 'X'){
      // player X wins
      return 'X';

    }
    else if (slots[1] == 'O'){
      //player O wins
      return 'O';

    }
  }
  else if (slots[2] == slots[5] && slots[5] == slots[8] && slots[5] != ' '){
    if (slots[5] == 'X'){
      // player X wins
      return 'X';

    }
    else if (slots[5] == 'O'){
      //player O wins
      return 'O';

    }
  }
  else if (slots[3] == slots[4] && slots[4] == slots[5]&& slots[3] != ' ' ){
    if (slots[3] == 'X'){
      // player X wins
      return 'X';

    }
    else if (slots[3] == 'O'){
      //player O wins
      return 'O';

    }
  }
  else if (slots[6] == slots[7] && slots[7] == slots[8] && slots[6] != ' '){
    if (slots[6] == 'X'){
      // player X wins
      return 'X';

    }
    else if (slots[6] == 'O'){
      //player O wins
      return 'O';

    }
  }
  else if (slots[2] == slots[4] && slots[4] == slots[6]&& slots[2] != ' ' ){
    if (slots[2] == 'X'){
      // player X wins
      return 'X';

    }
    else if (slots[2] == 'O') {
      //player O wins
      return 'O';

    }
  }



  return '-1';
}
